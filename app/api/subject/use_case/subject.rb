require_relative '../repository/subject'
# require_relative '../entity/user'

module App
  module Api
    module UseCase
      class Subject
        def get_all
          all_subjects = repository.get_all
          
          all_subjects
        end

        private
        def repository
          @repository ||= ::App::Api::Repository::User.new
        end
      end
    end
  end
end