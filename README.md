# BsdWtf [![Travis](https://img.shields.io/travis/hakamadare/rubygem-bsd_wtf.svg)]()

This gem wraps the [BSD wtf](https://www.freebsd.org/cgi/man.cgi?query=wtf&manpath=NetBSD+7.1) command in a Ruby interface.

The `wtf` executable must already be present on this system and located in `$PATH`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bsd_wtf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bsd_wtf

## Usage

```ruby
$ irb -r bsd_wtf
irb(main):001:0> BsdWtf.wtf("wtf")
=> {:success=>[{:acronym=>"WTF", :definition=>"where's the food"}], :failure=>[]}
irb(main):002:0> BsdWtf.wtf(["wtf","lolwut"]).to_json
=> "{\"success\":[{\"acronym\":\"WTF\",\"definition\":\"where's the food\"}],\"failure\":[\"lolwut\"]}"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hakamadare/rubygem-bsd_wtf. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BsdWtf project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hakamadare/rubygem-bsd_wtf/blob/master/CODE_OF_CONDUCT.md).
