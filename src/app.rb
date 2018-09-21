require 'sinatra'
require 'pg'
require_relative 'database/connect.database'
require_relative 'routes/subjects.route'

get '/' do
  ::DataBase::connect
end


=begin

- Infra -> connect BD / Servico Externo
- Queries -> Leitura de dados do DB
- Use Case -> Fluxo, Ações, etc
- Model -> Dados
- 

=end