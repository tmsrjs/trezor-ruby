require 'net/ssh/buffer'

module Trezor
  module Utils
    class Buffer < Net::SSH::Buffer
      # Writes each argument to the buffer as a network-byte-order-encoded
      # short (2-byte) integer. Does not alter the read position. Returns the
      # buffer object.
      def write_short(*n)
        @content << n.pack('n*')
        self
      end

      # Return the next two bytes as a short integer (in network byte order).
      # Returns nil if there are less than 2 bytes remaining to be read in the
      # buffer.
      def read_short
        b = read(2) or return nil
        b.unpack('n').first
      end

      # Writes each argument to the buffer as binary data (hex to binary)
      # Does not alter the read position. Returns the
      # buffer object.
      def write_htb(*blobs)
        @content << blobs.pack('H*')
        self
      end

      # Writes each argument to the buffer as hex data (binary to hex)
      # Does not alter the read position. Returns the
      # buffer object.
      def write_bth(*blobs)
        blobs.each { |b| @content << b.unpack('H*').first }
        self
      end
    end
  end
end
