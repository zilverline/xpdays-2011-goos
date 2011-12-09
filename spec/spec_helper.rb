require File.expand_path('../../lib/goos', __FILE__)

require "capybara"
require "capybara/dsl"

Dir["**/support/**/*.rb"].each {|f| require_relative "../#{f}"}

RSpec.configure do |config|
  config.include AsyncHelper
  
  config.before(:each) do
    @application_runner = ApplicationRunner.new
    @application_runner.auction_driver = AuctionWebDriver.new
    @application_runner.start
  end
  
  config.after(:each) do
    @application_runner.stop
  end
  
end
