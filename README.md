# Rabbit-Ruby

[![Build Status](https://travis-ci.org/Rabbit-Converter/Rabbit-Ruby.svg?branch=master)](https://travis-ci.org/Rabbit-Converter/Rabbit-Ruby)
[![Gem Version](https://badge.fury.io/rb/rabbit-mm.svg)](http://badge.fury.io/rb/rabbit-mm)

**Another Zawgyi <=> Unicode Converter as a ruby gem**. Written in [Ruby](https://www.ruby-lang.org/en).

## About

Zawgyi to Unicode has been written in [2011](https://github.com/saturngod/ZG2Uni_JS/commits/master). Now, unicode to zawgyi has been finished.

## Motivation

When I was writting [ZG2uni](https://github.com/saturngod/ZG2Uni_JS/), [Parabaik](https://github.com/ngwestar/parabaik) was not opensource. At that time, I need to use for [MYSTERY ZILLION](http://www.mysteryzillion.org) for converting the whole database to Unicode.

For Unicode to Zawgyi, Parabaik is under the ~~GPL license and cannot use in iOS app and Android App~~ LGPL. So, I decided to write new one with **WTFPL license**. This ruby gem is under MIT License.

> I cannot promise , it's correct 100% after converting.

> If you are not using in app or program and just for converting the text , please use [Parabaik](https://github.com/ngwestar/parabaik)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rabbit-mm'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install rabbit-mm
```

## Usage

```ruby
require 'rabbit'

rabbit = Rabbit::Converter.new

rabbit.uni2zg("မင်္ဂလာပါ")  # returns zg strings "မဂၤလာပါ"

rabbit.zg2uni("မဂၤလာပါ")   # returns unicode strings "မင်္ဂလာပါ"

```

## JRuby Support ?

Yes. Tested with jruby-1.7.20

## Contributing

1. Fork it ( https://github.com/Rabbit-Converter/Rabbit-Ruby )
2. Create your feature branch (`git checkout -b my-new-feature`)
  - Install ruby with [rvm](http://rvm.io), if you haven't.
  - Run `bundle install`
  - Add a test case.
  - Implement the code.
  - Make the tests pass.
  - You can run with `rake test` or just `rake` in the repo.
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License
MIT
