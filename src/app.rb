require 'sinatra'
require 'pg'
require_relative 'database/connect.database'
require_relative 'routes/subjects.route'

get '/' do
  ::DataBase::connect
end