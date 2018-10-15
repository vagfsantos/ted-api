module Users
  class Entity
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