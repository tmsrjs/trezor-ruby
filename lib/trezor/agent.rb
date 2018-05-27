require 'base64'
require 'socket'

require 'net/ssh/authentication/agent'

require 'trezor/utils'
require 'trezor/key_manager'

module Trezor
  class Agent
    include Utils

    MAPPING = {
      Net::SSH::Authentication::Agent::SSH2_AGENT_REQUEST_VERSION => :send_version,
      Net::SSH::Authentication::Agent::SSH2_AGENT_REQUEST_IDENTITIES => :list_identities,
      Net::SSH::Authentication::Agent::SSH2_AGENT_SIGN_REQUEST => :sign_challenge
    }

    def initialize(socket_path:, key_manager:)
      @socket_path = socket_path
      @key_manager = key_manager
    end

    def server
      @server ||= UNIXServer.new(@socket_path)
    end

    def on_request
      socket = server.accept
      Thread.new do
        yield(socket)
        socket.close
      end
    end

    def run
      while true
        on_request do |socket|
          while true
            type, body = read_packet(socket)
            break unless method_name = MAPPING[type]
            response = send(method_name, body)
            socket.write(Buffer.from(:string, response.to_s))
          end
        end
      end
    ensure
      File.unlink(@socket_path) if File.exists?(@socket_path)
    end

    def send_version(body)
      # Net::SSH::Authentication::Agent::SSH2_AGENT_VERSION_RESPONSE
      buffer = body.read
      Buffer.from(:byte, 2, :long, 0)
    end

    def list_identities(body)
      Buffer.from(
        :byte, Net::SSH::Authentication::Agent::SSH2_AGENT_IDENTITIES_ANSWER,
        :long, @key_manager.identities.count,
        :string,
        @key_manager.map { |i| [i.key.to_blob, i.key_name] }.flatten
      )
    end

    def failure_message
      Buffer.from(:byte, Net::SSH::Authentication::Agent::SSH_AGENT_FAILURE)
    end

    def sign_challenge(body)
      server_key = body.read_buffer.read_key
      blob = body.read_buffer
      return failure_message unless signature = @key_manager.sign(server_key, blob)
      Buffer.from(
        :byte, Net::SSH::Authentication::Agent::SSH2_AGENT_SIGN_RESPONSE,
        :string, signature
      )
    end

    def read_packet(socket)
      buffer = Buffer.new(socket.read(4))
      buffer.append(socket.read(buffer.read_long))
      type = buffer.read_byte
      #debug { "received agent packet #{type} len #{buffer.length - 4}" }
      return type, buffer
    end
  end
end
