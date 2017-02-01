# AprsParser

Ruby APRS parser based on [libfap](http://www.pakettiradio.net/libfap/).

## libfap

Libfap is a C port of the Ham::APRS::FAP Finnish APRS Parser perl module. As the original Perl code, libfap parses normal, mic-e and compressed location packets, NMEA location packets, objects, items, messages, telemetry and most weather packets. More information on HAM::APRS::FAP is available at http://search.cpan.org/dist/Ham-APRS-FAP/. More information on libfap is available at http://www.pakettiradio.net/libfap/.


## Requirements

Latest libfab (http://www.pakettiradio.net/libfap/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'aprs_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aprs_parser

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/aprs_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
