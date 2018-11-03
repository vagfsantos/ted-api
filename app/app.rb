require 'sinatra/base'
require_relative './user/controller/user'

module App
  class Ted < Sinatra::Base
    use Controller::UserController
  end
end