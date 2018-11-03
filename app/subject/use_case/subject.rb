require_relative '../repository/subject'
# require_relative '../entity/user'

module Subject
  module UseCase
    class SubjectUseCase
      private
      def repository
        @repository ||= ::Subject::Repository::UserRepository.new
      end

      public
      def get_all
        all_subjects = repository.get_all
        
        all_subjects
      end
    end
  end
end