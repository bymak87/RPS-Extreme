module RPS

  class User
    attr_reader :user_id

    def initialize(data)
      @user_id = data[:user_id]
      @username = data[:username]
  end
  end
end
