module App
  module V1
    module Entity
      class User
        def initialize(email, password)
          @email = email
          @password = password
        end

        def get_hash
          return {
            email: @email,
            password: @password
          }
        end
      end
    end
  end
end