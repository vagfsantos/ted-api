require_relative '../repository/subject'
# require_relative '../entity/user'

module App
  module V1
    module UseCase
      class Subject
        def get_all
          all_subjects = repository.get_all
          
          all_subjects
        end

        private
        def repository
          @repository ||= ::App::V1::Repository::User.new
        end
      end
    end
  end
end