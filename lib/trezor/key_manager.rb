require 'trezor/identity'
require 'trezor/utils'

module Trezor
  class KeyManager
    include Enumerable
    include Utils

    def initialize(identities_file_or_string)
      @path = identities_file_or_string
    end

    def identities
      @identities ||= load_identities
    end

    def each
      identities.each { |i| yield i }
    end

    # For compatibility with Net::SSH::Authentication::KeyManager
    def each_identity
      each { |i| yield i.key }
    end

    def sign(ssh_identity, blob)
      nonce = blob.read_buffer.to_s
      type = blob.read_byte # SSH2_MSG_USERAUTH_REQUEST == 50 (from ssh2.h, line 108)
      user = blob.read_buffer.to_s
      conn = blob.read_buffer.to_s
      auth = blob.read_buffer.to_s
      have_sig = blob.read_byte  # have_sig == 1 (from sshconnect2.c, line 1056)
      key_type = blob.read_buffer.to_s
      public_key = blob.read_buffer.to_s
      identity = identities.find { |i| i.key.fingerprint == ssh_identity.fingerprint }
      return unless identity
      identity.sign(blob)
    end

    private

    def load_identities
      if @path.is_a?(Array)
        @path.reduce([]) do |identities, file_or_string|
          identities.concat(self.class.load_from_file_or_string(file_or_string))
        end
      else
        self.class.load_from_file_or_string(@path)
      end
    end

    private_class_method

    def self.load_from_file_or_string(file_or_string)
      path = File.expand_path(file_or_string)
      return load_from_file(path) if File.exist?(path)
      [Trezor::Identity.new(file_or_string)]
    end

    def self.load_from_file(path)
      identity_curve_regex = /\<(.*?)\|(.*?)\>/

      if path.end_with?('.pub')
        File.foreach(path).map do |line|
          ssh_type, blob, key_name = line.split
          identity_string, curve_name = key_name.scan(identity_curve_regex).first
          key = Buffer.new(Base64.strict_decode64(blob)).read_key
          Trezor::Identity.new(identity_string, curve_name, key)
        end
      else
        File.read(path).scan(identity_curve_regex).map do |identity_string, curve_name|
          Trezor::Identity.new(identity_string, curve_name)
        end
      end
    end
  end
end
