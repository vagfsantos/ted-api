require 'sinatra/base'
require_relative './users/controller/users'

module Ted
  class App < Sinatra::Base
    use Controller::Users
  end
end