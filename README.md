# RSpec::Custom::Formatters::ShortFormatter

This gem adds an ["RSpec"](https://github.com/rspec/rspec-core)-formatter. It's goal is to be clear and short.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-format-short'
```

And then execute:

```ruby
    $ bundle
```

Or install it yourself as:

```ruby
    $ gem install rspec-format-short

```


## Usage

Include it into your rspec test... E.G:

```ruby
#!/opt/sensu/embedded/bin/rspec

require "rspec/custom/formatters/short"

RSpec.configure do |config|
  config.failure_exit_code = 2
  config.formatter = RSpec::Custom::Formatters::ShortFormatter
end

require "serverspec"
require "infrataster/rspec"

set :backend, :exec
set :path, "$PATH:/sbin:/usr/local/sbin"
[...]
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vncntvandriessche/rspec-format-short. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

