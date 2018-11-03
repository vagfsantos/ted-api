require 'sinatra/base'
require 'json'
require_relative '../use_case/subject'

module Subject
  module Controller
    class SubjectController < Sinatra::Base
      private
      def use_case
        @use_case ||= ::Subject::UseCase::SubjectUseCase.new
      end

      public
      get '/subjects' do
        content_type :json

        all_subjects = use_case.get_all
        all_subjects.to_json
      end
    end
  end
end