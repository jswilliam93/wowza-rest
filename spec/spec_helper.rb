require 'dotenv/load'
require 'bundler/setup'
require 'webmock/rspec'
require 'wowza_rest'
require 'support/vcr_setup'
require 'json'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

WebMock.disable_net_connect!(allow_localhost: true)
