require File.dirname(__FILE__) + '/../../app/twwitter'

begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end
require 'rack/test'
require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Twitter

class TwitterWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  TwitterWorld.new
end