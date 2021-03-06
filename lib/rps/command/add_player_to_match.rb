module RPS

  class AddPlayerToMatch < Command

    def run(input)
      p1_id = input[:p1_id]
      p2_id = input[:p2_id]
      match_id = input[:match_id]



      add_player = RPS.db.add_player_to_match(p1_id, p2_id, match_id)
      success(add_player: add_player, match: match)
    end
  end
end
