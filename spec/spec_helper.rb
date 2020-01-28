ENV['RACK_ENV'] = 'test'
ENV[ 'DATABASE' ] = 'test'
# Bring in the contents of the app.rb file. the below equivalent to require_relative
require File.join(File.dirname(__FILE__), '..', 'app.rb')


# Require the gems
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'connect_and_clear_db'

# Tell capbara to talk to BookmarkManager
# Capybara.app = BookmarkManager




RSpec.configure do |config|
  # rspec-expectations config goes here. You can use an alternate
  # assertion/expectation library such as wrong or the stdlib/minitest
  # assertions if you prefer.
  config.expect_with :rspec do |expectations|

    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # rspec-mocks config goes here. You can use an alternate test double
  # library (such as bogus or mocha) by changing the `mock_with` option here.
  config.mock_with :rspec do |mocks|
    # Prevents you from mocking or stubbing a method that does not exist on
    # a real object. This is generally recommended, and will default to
    # `true` in RSpec 4.
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups


end
