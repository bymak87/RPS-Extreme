
module RPS

  class CreateUser < Command

    def run(input)
      if input[:name].nil? || input[:password].nil?
        {:success? => false, :error => "You need to provide a username and password."}
      else
        user = RPS.db.create_user(name: input[:name], password: input[:password])
        {:success? => true, :user => user}
      end

    end
  end
end
