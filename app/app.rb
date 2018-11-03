require 'sinatra/base'
require_relative './user/controller/user'

module App
  class Ted < Sinatra::Base
    use User::Controller::UserController
  end
end