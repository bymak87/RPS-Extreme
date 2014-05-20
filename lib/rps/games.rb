module RPS

  class Game
    attr_reader :id, :match_id
    attr_accessor :p1_move, :p2_move, :winner

    def initialize(data)
      @id = data[:id]
      @match_id = data[:match_id]
      @p1_move = data[:p1_move]
      @p2_move = data[:p2_move]
      @winner = data[:winner]

    end
  end


end
