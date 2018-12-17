require_relative '../repository/subject'
# require_relative '../entity/user'

module Subject
  module UseCase
    class SubjectUseCase
      def get_all
        all_subjects = repository.get_all
        
        all_subjects
      end

      private
      def repository
        @repository ||= ::Subject::Repository::UserRepository.new
      end
    end
  end
end