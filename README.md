# Trezor Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'trezor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install trezor

## TODO

- Specs, lots of specs.
- Docs.

## Usage

### Trezor::Device

The `Trezor::Device` class is a very basic communications layer. It simply maps Protobuf messages to instance methods via `method_missing`, both CamelCase and underscore versions are supported.

#### Manual session management
```ruby
> require 'trezor/device'
=> true
> Trezor::Device.enumerate
=> [#<Trezor::Device:0x007fc0229783f0 @session_counter=0, @device_info={"path"=>"...", "vendor"=>21324, "product"=>1, "session"=>nil}, @connection=#<HTTP::Client ...>>]
> device = Trezor::Device.enumerate.first
=> #<Trezor::Device:0x007fc0229783f0 @session_counter=0, @device_info={"path"=>"...", "vendor"=>21324, "product"=>1, "session"=>nil}, @connection=#<HTTP::Client ...>>
> device.start_session
=> 1
> device.ping
=> #<Trezor::Protobuf::Success message="">
> device.end_session
=> nil
```

#### Automatic session management
```ruby
> require 'trezor/device'
=> true
> Trezor::Device.with_session do |device|
*   device.ping
> end
=> #<Trezor::Protobuf::Success message="">
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tmsrjs/trezor-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Trezor Ruby project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tmsrjs/trezor-ruby/blob/master/CODE_OF_CONDUCT.md).
