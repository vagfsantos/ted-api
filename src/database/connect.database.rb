require 'pg'

module DataBase
  def DataBase.connect
    PG::Connection.new(:host => ENV['DB_HOST'], :port => ENV['DB_PORT'], :dbname => ENV['DB_NAME'], :user => ENV['DB_USER'], :password => ENV['DB_PASSWORD'])
  end
end