require 'io/console'

require 'http'

require 'trezor/utils'
require 'trezor/protobuf'

module Trezor
  class Device
    include Utils

    HOST = 'http://127.0.0.1:21325'
    HEADERS = { origin: 'https://python.trezor.io' }

    def initialize(device_info)
      @session_counter = 0
      @device_info = device_info
      @connection = HTTP.persistent(HOST)
      @connection.default_options.headers.merge!(HEADERS)
    end

    def start_session
      acquire! if @session_counter == 0
      @session_counter += 1
    end

    def end_session
      @session_counter -= 1
      release! if @session_counter == 0
    end

    def acquire!
      response = @connection.post("/acquire/#{@device_info['path']}/null")
      body = response.to_s
      raise body unless response.status.ok?
      @session = JSON.parse(body)['session']
    end

    def release!
      return unless @session
      response = @connection.post("/release/#{@session}")
      body = response.to_s
      raise body unless response.status.ok?
      @session = nil
    end

    def call(message)
      response = post(message)
      handler = "callback_#{response.class.name.demodulize}"
      unless respond_to?(handler)
        #puts "could not find handler for #{response.class.name}"
        return response
      end
      call(send(handler, response))
    end

    def post(message)
      serialized = Protobuf.serialize(message)
      response = @connection.post("/call/#{@session}", body: serialized)
      raise response.to_s unless response.status.ok?
      Protobuf.decode(response.to_s)
    end

    def method_missing(method_name, *args, &block)
      return super unless respond_to?(method_name)
      call(Protobuf[method_name].new(*args), &block)
    end

    def respond_to_missing?(method_name, include_private = false)
      super || Protobuf[method_name].present?
    end

    def callback_ButtonRequest(msg)
      Protobuf::ButtonAck.new
    end

    def callback_PassphraseRequest(msg)
      return Protobuf::PassphraseAck.new if msg.on_device
      passphrase = ask('Enter passphrase:', false).unicode_normalize(:nfkd)
      Protobuf::PassphraseAck.new(passphrase: passphrase)
    end

    def callback_PassphraseStateRequest(msg)
      Protobuf::PassphraseStateAck.new
    end

    def callback_PinMatrixRequest(msg)
      prompt =
        case msg.type
        when Protobuf::PinMatrixRequestType::PinMatrixRequestType_Current
          'current PIN'
        when Protobuf::PinMatrixRequestType::PinMatrixRequestType_NewFirst
          'new PIN'
        when Protobuf::PinMatrixRequestType::PinMatrixRequestType_NewSecond
          'new PIN again'
        else
          'PIN'
        end
      Protobuf::PinMatrixAck.new(pin: ask("Enter #{prompt}:", false))
    end

    def self.enumerate
      JSON.parse(HTTP[HEADERS].post("#{HOST}/enumerate").to_s).map do |device_info|
        new(device_info)
      end
    end

    MUTEX = Mutex.new
    def self.with_session
      MUTEX.lock
      device = enumerate.first
      unless device
        # log debug message 'Trezor not found'
        return
      end
      device.start_session
      yield(device)
    ensure
      device.end_session if device
      MUTEX.unlock
    end

    def self.prompter(&block)
      return @default_prompter = lambda(&block) if block_given?
      prompter do |prompt, echo|
        STDOUT.print(prompt)
        if echo
          STDIN.gets
        else
          STDIN.noecho(&:gets)
        end.chomp.tap { STDOUT.print("\n") }
      end
    end

    private

    def ask(prompt, echo = true)
      self.class.prompter.call(prompt, echo)
    end
  end
end
