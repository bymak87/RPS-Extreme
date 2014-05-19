module RPS

  class Games
    attr_reader :game_id

    def initialize(data)
      @game_id = data[:game_id]
  end
  end
end
