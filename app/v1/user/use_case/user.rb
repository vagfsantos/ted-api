require_relative '../repository/user'
require_relative '../entity/user'

module App
  module V1
    module UseCase
      class User
        def get_all
          all_users = repository.get_all
          
          all_users
        end
        
        def get_by_id(id)
          fetched_user = repository.get_by_id(id)
          
          fetched_user
        end
        
        def save(user)
          email = user['email']
          password = user['password']
          
          entity = ::App::V1::Entity::User.new(email, password)
          user_to_hash = entity.get_hash
          saved_user = repository.save(user_to_hash)
            
          saved_user
        end

        private
        def repository
          @repository ||= ::App::V1::Repository::User.new
        end
      end
    end
  end
end