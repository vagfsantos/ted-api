require 'sinatra/base'
require 'json'
require_relative '../use_case/user'

module Controller
  class UserController < Sinatra::Base
    private
    def use_case
      @use_case ||= UseCase::UserUseCase.new
    end

    public
    get '/users' do
      content_type :json
      all_users = use_case.get_all

      all_users.to_json
    end

    get '/users/:id' do
      content_type :json
      user_id = params['id']
      fetched_user = use_case.get_by_id(user_id)
      
      fetched_user.to_json
    end

    post '/users' do
      content_type :json
      pass unless request.accept? 'application/json'
      
      payload = JSON.parse request.body.read
      saved_user = use_case.save(payload)

      saved_user.to_json
    end
  end
end