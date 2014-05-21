module RPS

  class ShowRemainingGames < Command

    def run(input)
      match_id = input[:match_id]
      match = RPS.db.get_match(match_id)
      remaining_game = RPS.db.show_remaining_games(match_id)

      return {:success? => false, :error => "Enter valid match id."} if match_id.nil?
      success :remaining_game => remaining_game
    end
  end
end
