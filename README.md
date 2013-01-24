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

    # now: 2013
    <%= raw show_copyright "&copy; Answer" %>                         # => &copy; Answer
    <%= raw show_copyright "&copy; Answer", now: 2012 %>              # => &copy; Answer 2012
    <%= raw show_copyright "&copy; Answer", since: 2012 %>            # => &copy; Answer 2012 - 2013
    <%= raw show_copyright "&copy; Answer", since: 2012, now: 2014 %> # => &copy; Answer 2012 - 2014

    <%= raw show_copyright "&copy; Answer", since: 2012, now: 2014, padding: " = ", separator: " < " %>
    # => &copy; Answer = 2012 < 2014

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## run rspec

1. bundle install --path=path/to/bundle
2. add feature
3. run spec (`bundle exec rspec`)
