require 'sinatra'
require 'json'

subjects = {
  id: 1,
  name: 'name',
  color: '#fff'
}

get '/subjects' do
  subjects.to_json
end