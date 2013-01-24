# Ans::Copyright

copyright の表示を行う

## Installation

Add this line to your application's Gemfile:

    gem 'ans-copyright'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ans-copyright

## Usage

    module ApplicationHelper
      include Ans::Copyright
    end

    <%= show_copyright "&copy; Answer", since: 2012 %>

    # => &copy; Answer 2012 - 2013

## Options

* since: 年 # この年から
* year:  年 # この年まで (省略すると今年)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
