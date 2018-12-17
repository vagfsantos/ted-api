require 'sinatra/base'
require 'json'
require_relative '../use_case/subject'

module App
  module V1
    module Controller
      class Subject < Sinatra::Base
        get '/subjects' do
          content_type :json

          all_subjects = use_case.get_all
          all_subjects.to_json
        end

        private
        def use_case
          @use_case ||= ::App::V1::UseCase::Subject.new
        end
      end
    end
  end
end