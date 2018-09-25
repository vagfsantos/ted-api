require 'sinatra/base'
require 'json'
require_relative '../queries/users'

module Controller
  class Users < Sinatra::Base
    get '/users' do
      content_type :json

      all_users = ::Queries::Users::GET::all
      all_users.to_json
    end

    get '/users/:id' do
      content_type :json
      
      user_id = params['id']
      all_users = ::Queries::Users::GET::by_id(user_id)
      all_users.to_json
    end

    post '/users' do
      pass unless request.accept? 'application/json'
      content_type :json
      
      data = JSON.parse request.body.read
      all_users = ::Queries::Users::POST::new(data)
      all_users.to_json
    end
  end
end