require 'sinatra'
require 'pg'
require_relative 'infra/database'
require_relative 'controller/subjects'

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