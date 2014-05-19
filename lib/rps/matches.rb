module RPS

  class Matches
    attr_reader :matche_id

    def initialize(data)
      @match_id = data[:match_id]
  end
  end
end
