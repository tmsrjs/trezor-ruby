
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "trezor/version"

Gem::Specification.new do |spec|
  spec.name          = "trezor"
  spec.version       = Trezor::VERSION
  spec.authors       = ["Tomás Rojas"]
  spec.email         = ["tmsrjs@gmail.com"]

  spec.summary       = %q{Trezor}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = 'https://github.com/tmsrjs/trezor-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'bcrypt_pbkdf', '~> 1.0', '< 2.0'
  spec.add_dependency 'ecdsa'
  spec.add_dependency 'ed25519', '~> 1.2', '< 2.0'
  spec.add_dependency 'http'
  spec.add_dependency 'net-ssh', '~> 5.0', '>= 5.0.1'
  spec.add_dependency 'openssl', '~> 2.1'
  spec.add_dependency 'protobuf'
  spec.add_dependency 'optimist'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'byebug', '~> 10.0'
end
