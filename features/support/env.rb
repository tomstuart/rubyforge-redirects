require 'rack'
require 'rack/test'

module App
  def app
    Rack::Builder.parse_file('config.ru').first
  end
end

World(Rack::Test::Methods, App)
