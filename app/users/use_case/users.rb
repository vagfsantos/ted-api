require 'json'
require_relative '../repository/users'
require_relative '../entity/users'

module Users
  class UseCase
    def get_all
      repository = ::Users::Repository.new
      all_users = repository.get_all
      
      all_users.to_json
    end
    
    def get_by_id(id)
      repository = ::Users::Repository.new
      matched_user = repository.get_by_id(id)
      
      matched_user.to_json
    end
    
    def save(payload)
      data = JSON.parse payload
      email = data['email']
      password = data['password']
      
      repository = ::Users::Repository.new
      entity = ::Users::Entity.new(email, password)
      saved_user = repository.save(entity.get_hash)
        
      saved_user.to_json
    end
  end
end