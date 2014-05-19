module RPS

  class Games
    attr_reader :game_id, :p1_id, :p2_id
    attr_accessor :p1_move, :p2_move, :winner

    def initialize(data)
      @game_id = data[:game_id]
      @p1_id = data[:p1_id]
      @p2_id = data[:p2_id]
      @winner = data[:winner]

    end
  end

  def add_player
  end
end
