require 'sinatra'
require 'pg'
require_relative '../../infra/database'

module Queries
  module Users
    module GET
      def self.all
        query = "SELECT id, email FROM users"

        all_users = []
        data_users = ::DataBase::CONNECTION.exec(query)
        data_users.each { |row| all_users.append row }
        all_users
      end

      def self.by_id(id)
        query = "SELECT id, email FROM users where id='#{id}'"

        user = Hash.new
        data_users = ::DataBase::CONNECTION.exec(query)
        data_users.each { |row| user.merge! row }
        user
      end
    end

    module POST
      def self.new(data)
        email = data["email"]
        password = data["password"]
        query = "INSERT INTO users (email, password) values ('#{email}', '#{password}')"
        
        response = ::DataBase::CONNECTION.exec(query)
        response.result_status
      end
    end
  end
end