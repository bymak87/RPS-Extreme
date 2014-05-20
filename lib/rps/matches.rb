module RPS

  class Matches
    attr_reader :p1_id, :p2_id, :winner, :match_id
    # :p1_wins, :p2_wins
    def initialize(data)
      @match_id = data[:match_id]
      @p1_id = data[:p1_id]
      @p2_id = data[:p2_id]
      @winner = data[:winner]
      # @p1_wins = data[:p1_wins] || 0
      # @p2_wins = data[:p2_wins] || 0


    end
  end
end
