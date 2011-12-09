require File.expand_path('../../lib/goos', __FILE__)

Dir["**/support/**/*.rb"].each {|f| require_relative "../#{f}"}

RSpec.configure do |config|
  config.include AsyncHelper
end
