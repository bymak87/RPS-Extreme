module RPS

  class CreateGame < Command

    def run(input)
      if input[:id].nil && input[:match_id].nil
        {:success? => false, :error => "Enter valid id and match id."}
      end
      game = RPS.db.create_game(id: input[:id], match_id: input[:match_id])
      success :game => game
    end
  end
end
