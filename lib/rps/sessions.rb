module RPS

  class Session
    attr_reader :session_id

    def initialize(data)
      @session_id = data[:session_id]
  end
  end
end
