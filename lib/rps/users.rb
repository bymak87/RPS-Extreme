module RPS

  class User
    attr_reader :id, :name, :password

    def initialize(data)
      @id = data[:id]
      @name = data[:name]
      @password = data[:password]
    end

  end
end
