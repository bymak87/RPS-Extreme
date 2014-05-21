module RPS

  class ShowCompletedGames < Command

    def run(input)
      match_id = input[:match_id]
      match = RPS.db.get_match(match_id)
      completed_game = RPS.db.show_completed_games(match_id)

      return {:success? => false, :error => "Match does not exist."} if match.nil?
      success :completed_game => completed_game
    end
  end
end
