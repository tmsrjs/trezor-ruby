require 'active_support/core_ext/string/inflections'

require 'trezor/utils/buffer'
require 'trezor/protobuf/messages.pb'

module Trezor
  module Protobuf
    def self.serialize(message)
      msg_type = MessageType.for(message)
      serialized = message.serialize
      header = Utils::Buffer.from(:short, msg_type.to_i, :long, serialized.length)
      payload = Utils::Buffer.from(:bth, [header.to_s, serialized])
      payload.to_s
    end

    def self.decode(blob)
      buffer = Utils::Buffer.from(:htb, blob)
      MessageType[buffer.read_short].decode(buffer.read_string)
    end

    def self.[](class_name)
      const_get(class_name.to_s.camelize)
    rescue NameError
      # log debug message
    end

    class MessageType
      def self.[](tag)
        message_type_name = fetch(tag).name.to_s.split('_').last
        Protobuf[message_type_name]
      end

      def self.for(message)
        fetch("MessageType_#{message.class.name.demodulize}")
      end
    end
  end
end
