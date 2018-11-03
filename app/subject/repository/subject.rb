require 'pg'
require_relative '../../infra/database'

module Subject
  module Repository
    class UserRepository
      def get_all
        query = "SELECT * FROM subjects"
        
        all_subjects = []
        subjects_data = ::DataBase::CONNECTION.exec(query)
        subjects_data.each do |data| 
          all_subjects.push(data)
        end

        all_subjects
      end
    end
  end
end