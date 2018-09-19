require 'sinatra'
require 'pg'
require_relative 'routes/subjects.route'

get '/' do
  PG::Connection.new(:host => 'localhost', :port => 5432, :dbname => 'ted', :user => 'postgres', :password => '')
end