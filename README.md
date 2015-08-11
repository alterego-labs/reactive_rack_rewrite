# ReactiveRackRewrite

There is some very useful gem called [rack-rewrite](https://github.com/jtrupiano/rack-rewrite).
But it provides ability to write rule statically and after you added new rules the rails server must be restarted.

This gem allows you to manage rewrite rules through admin panel and
after some changes they will be applied immediately!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'reactive-rack-rewrite'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install reactive-rack-rewrite

Then insert next code into `application.rb`:

```ruby
config.middleware.insert_before(Rack::Runtime, Rack::Rewrite, klass: ReactiveRackRewrite::RuleSet)
```

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it ( https://github.com/[my-github-username]/reactive-rack-rewrite/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
