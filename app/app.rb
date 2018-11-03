require 'sinatra/base'
require_relative './user/controller/user'
require_relative './subject/controller/subject'

module App
  class Ted < Sinatra::Base
    use ::User::Controller::UserController
    use ::Subject::Controller::SubjectController
  end
end