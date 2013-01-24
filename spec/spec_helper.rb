# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'rspec/autorun'
require "delorean"
require "rr"

# have_received matcher fix
# https://gist.github.com/663151
module RR
  module Adapters
    module Rspec
      def self.included(mod)
        RSpec.configuration.backtrace_clean_patterns.push(RR::Errors::BACKTRACE_IDENTIFIER)
      end
    end
  end
end

RSpec.configure do |config|
  RSpec::Core::ExampleGroup.send(:include, RR::Adapters::Rspec)
end

RSpec.configure do |config|
  # ## Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  config.mock_with :rr
end
