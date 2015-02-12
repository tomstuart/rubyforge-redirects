require 'rack'
require 'rack/test'
require 'capybara/cucumber'

module App
  def app
    Rack::Builder.parse_file('config.ru').first
  end
  extend self
end

World(Rack::Test::Methods, App)
Capybara.app = App.app
