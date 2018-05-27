require 'net/ssh/authentication/methods/publickey'

require 'trezor/key_manager'

module Net
  module SSH
    module Authentication
      module Methods

        # Usage:
        #
        # Net::SSH.start("host", "user", auth_methods: %w[publickey-trezor], keys: %w[~/.ssh/config]) do |ssh|
        #   result = ssh.exec!("ls -l")
        #   puts result
        # end
        class PublickeyTrezor < Publickey
          def initialize(session, options = {})
            super
            @key_manager = Trezor::KeyManager.new(@key_manager.options[:keys])
          end
        end
      end
    end
  end
end
