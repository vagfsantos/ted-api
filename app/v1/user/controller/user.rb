require 'sinatra/base'
require 'json'
require_relative '../use_case/user'

module App
  module V1
    module Controller
      class User < Sinatra::Base
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

        private
        def use_case
          @use_case ||= ::App::V1::UseCase::User.new
        end
      end
    end
  end
end