# Chelsea

Chelsea is a Ruby gem designed to allow you to scan your Ruby Gem powered projects and report on any vulnerabilities in your third party dependencies. It is powered by Sonatype's OSS Index.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chelsea'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chelsea

## Usage

```
$ chelsea 
 _____  _            _                   
/  __ \| |          | |                  
| /  \/| |__    ___ | | ___   ___   __ _ 
| |    | '_ \  / _ \| |/ __| / _ \ / _` |
| \__/\| | | ||  __/| |\__ \|  __/| (_| |
 \____/|_| |_| \___||_||___/ \___| \__,_|
                                         
                                         
Version: 0.0.1

usage: chelsea [options] ...

Options:
    -f, --file  do the dang thing
    --version   print the version
```

Most basic usage is:

`chelsea --file Gemfile.lock`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sonatype-nexus-community/chelsea. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code of Conduct

Everyone interacting in the Chelsea project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sonatype-nexus-community/chelsea/blob/master/CODE_OF_CONDUCT.md).

## Copyright

Copyright (c) 2019 Allister Beharry. See [MIT License](LICENSE.txt) for further details.
