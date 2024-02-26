# AuditLogger
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "audit_logger"
```

And then execute:
```bash
$ bundle
```

Install and run the migrations:
```bash
$ bundle exec rails audit_logger:install:migrations
$ bundle exec rails db:migrate
```

Configure ignored attributes (if any) by creating an initializer (config/initializers/audit_logger.rb):
```ruby
AuditLogger.configure do |config|
  config.ignored_attributes = %i[id created_at updated_at deleted_at some_other_attribute_to_ignore]
end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
