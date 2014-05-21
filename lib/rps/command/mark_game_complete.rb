module RPS

  class MarkGameComplete < Command

    def run(input)
      id = input[:id]
      return {:success? => false, :error => "Enter valid game id."} if id.nil?
      complete_game = RPS.db.mark_game_complete(id)

      success :completed_game => completed_game
    end
  end
end
