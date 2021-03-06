require 'pg'
require_relative '../../../infra/database'

module App
  module Api
    module Repository
      class User
        def get_all
          query = "SELECT id, email FROM users"
          
          all_users = []
          users_data = ::DataBase::CONNECTION.exec(query)
          users_data.each do |user_data|
            all_users.push(user_data)
          end

          all_users
        end

        def get_by_id(id)
          query = "SELECT id, email FROM users where id='#{id}'"
          
          user = Hash.new
          users_data = ::DataBase::CONNECTION.exec(query)
          users_data.each do |user_data|
            user.merge!(user_data)
          end
          
          user
        end

        def save(user)
          query = "INSERT INTO users (email, password) values ('#{user[:email]}', '#{user[:password]}')"
          
          saved_response = ::DataBase::CONNECTION.exec(query)
          
          saved_response.result_status
        end
      end
    end
  end
end