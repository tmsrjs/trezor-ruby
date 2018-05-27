require 'uri'

require 'openssl'

require 'trezor/device'
require 'trezor/utils'

module Trezor
  class Identity
    extend Forwardable
    include Utils

    # Supported ECDSA curves for SSH (GPG not implemented)
    CURVE_NIST256 = 'nist256p1'
    CURVE_ED25519 = 'ed25519'

    # Supported ECDH curves for GPG (not implemented)
    ECDH_NIST256 = 'nist256p1'
    ECDH_CURVE25519 = 'curve25519'

    SSH_NIST256_KEY_PREFIX = 'ecdsa-sha2-'
    SSH_NIST256_CURVE_NAME = 'nistp256'
    SSH_NIST256_KEY_TYPE = SSH_NIST256_KEY_PREFIX + SSH_NIST256_CURVE_NAME
    SSH_ED25519_KEY_TYPE = 'ssh-ed25519'

    delegate [:user, :host, :port, :path] => :@uri
    def_delegator :@uri, :scheme, :proto
    attr_accessor :curve_name

    def initialize(identity_string, curve_name = CURVE_NIST256, key = nil)
      @uri = URI.parse(identity_string)
      @uri = URI.parse('ssh://' + identity_string) unless @uri.scheme
      @curve_name = curve_name
      @key = key
    end

    def key
      @key ||= load_public_key
    end

    def key_name
      "<#{@uri.to_s}|#{@curve_name}>"
    end

    def export_public_key
      "#{key.ssh_type} #{Base64.strict_encode64(key.to_blob).strip} #{key_name}"
    end

    def sign(blob)
      response = Device.with_session do |device|
        device.sign_identity(
          challenge_hidden: blob.to_s, ecdsa_curve_name: @curve_name,
          identity: { user: user, host: host, proto: proto }
        )
      end
      return if response.is_a?(Protobuf::Failure)
      signature = response.signature[1..-1]
      if key.ssh_type == SSH_NIST256_KEY_TYPE
        parts = [signature[0..31], signature[32..-1]]
        signature = Buffer.from(:string, parts.map { |p| "\x00" + p }).to_s
      end
      Buffer.from(:string, [key.ssh_type, signature]).to_s
    end

    private

    # Compute BIP32 derivation address according to SLIP-0013/0017
    def get_bip32_address(ecdh = false)
      identity_string = [0].pack('<L') + @uri.to_s
      digest = OpenSSL::Digest.digest('SHA256', identity_string)
      hardened = 0x80000000
      addr_0 = ecdh ? 17 : 13
      address_n = [addr_0] + digest.unpack('<L4')
      address_n.map { |n| hardened | n }
    end

    def raw_public_key
      response = Device.with_session do |device|
        device.get_public_key(address_n: get_bip32_address, ecdsa_curve_name: @curve_name)
      end
      return if response.is_a?(Protobuf::Failure)
      public_key = response.node.public_key
      return public_key[1..-1] unless @curve_name == CURVE_NIST256
      public_key
    end

    def key_type
      {
        CURVE_NIST256 => SSH_NIST256_KEY_TYPE,
        CURVE_ED25519 => SSH_ED25519_KEY_TYPE,
        ECDH_CURVE25519 => SSH_ED25519_KEY_TYPE
      }[@curve_name]
    end

    def load_public_key
      parts = [key_type]
      parts << SSH_NIST256_CURVE_NAME if @curve_name == CURVE_NIST256
      parts << raw_public_key
      Buffer.from(:string, parts).read_key
    end
  end
end
