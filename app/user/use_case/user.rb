require_relative '../repository/user'
require_relative '../entity/user'

module User
  module UseCase
    class UserUseCase
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
        
        entity = User::Entity::UserEntity.new(email, password)
        user_to_hash = entity.get_hash
        saved_user = repository.save(user_to_hash)
          
        saved_user
      end

      private
      def repository
        @repository ||= User::Repository::UserRepository.new
      end
    end
  end
end