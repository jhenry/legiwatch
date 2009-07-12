# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "cucumber"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'

# Comment out the next line if you don't want Cucumber Unicode support
require 'cucumber/formatter/unicode'

# Comment out the next line if you don't want transactions to
# open/roll back around each scenario
Cucumber::Rails.use_transactional_fixtures

# Comment out the next line if you want Rails' own error handling
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)
Cucumber::Rails.bypass_rescue

require 'webrat'

Webrat.configure do |config|
  config.mode = :rails
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'
require 'pickle/world'

Pickle.configure do |config|
  config.adapters = [:factory_girl]
  config.map 'I', 'myself', 'me', 'my', :to => 'user: "me"'
end

require 'pickle/path/world'
require 'pickle/email/world'
