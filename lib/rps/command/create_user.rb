
module RPS

  class User < Command

    def run(input)
      if input[:name].nil && input[:password].nil
        {:success? => false, :error => "You need to provide a username and password."}
      end
      user = RPS.db.create_user(name: input[:name], password: input[:password])
      success :user => user
    end
  end
end
