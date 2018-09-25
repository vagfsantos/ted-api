require 'sinatra/base'
require_relative './controller/users'

module Ted
  class App < Sinatra::Base
    use Controller::Users
  end
end