module RPS

  class Match < Command

    def run(input)
      if input[:p1_id].nil && input[:p2_id].nil && input[:match_id]
        {:success? => false, :error => "Enter valid player id and match id."}
      end
      match = RPS.db.create_match(p1_id: input[:p1_id], p2_id: input[:p2_id], match_id: input[:match_id])
      success :match => match
    end
  end
end
