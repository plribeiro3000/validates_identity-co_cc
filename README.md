# ValidatesIdentity::CoCc

This projects aims to validate Colombia [Cédula de ciudadanía](https://es.wikipedia.org/wiki/C%C3%A9dula_de_ciudadan%C3%ADa_(Colombia)) identification document.
This project depends on `validates_identity` gem and is a plugin for it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'validates_identity-co_cc'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install validates_identity-co_cc

## Usage

Just use as any other validator:

```ruby
class User < ActiveRecord::Base
  # :identity_type is the attribute that will be used to determine the identity type and is required
  validates :identity, identity: { identity_type: :identity_type }
end
```

## Advanced Usage

New Identity Validators can be registered through the public apis of `ValidatesIdentity`

```ruby
ValidatesIdentity.register_identity_type('CustomIdentity', CustomIdentityValidator)
```

Each Validator should have:

- a constructor with 2 params: `value` and `options` as a hash
- a `valid?` method that returns a boolean

In case of a legacy system where keys were already defined and differ from the official ones, aliases can be registered as well

```ruby
ValidatesIdentity.register_identity_type_alias('LegacyIdentity', 'CustomIdentity')
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/plribeiro3000/validates_identity-co_cc. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/plribeiro3000/validates_identity-co_cc/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ValidatesIdentity::CoCc project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/plribeiro3000/validates_identity-co_cc/blob/master/CODE_OF_CONDUCT.md).
