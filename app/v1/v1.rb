require 'sinatra/base'
require_relative './user/controller/user'
require_relative './subject/controller/subject'

module App
  module V1
    class Api < Sinatra::Base
      use Controller::User
      use Controller::Subject
    end
  end
end