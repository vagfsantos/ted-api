require 'sinatra/base'
require_relative '../use_case/users'

module Users
  class Controller < Sinatra::Base
    get '/users' do
      content_type :json

      use_case = ::Users::UseCase.new
      use_case.get_all
    end

    get '/users/:id' do
      content_type :json
      
      user_id = params['id']
      use_case = ::Users::UseCase.new
      
      use_case.get_by_id(user_id)
    end

    post '/users' do
      content_type :json
      pass unless request.accept? 'application/json'
      
      use_case = ::Users::UseCase.new
      
      use_case.save(request.body.read)
    end
  end
end