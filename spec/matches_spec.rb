require 'spec_helper'

describe 'matches class' do
  context 'initialize method' do
    it "should have players, player win counts, and status " do
      data = {p1_id: 1, p2_id: 2}
     match1 = RPS::Matches.new(data)
      expect(match1.p1_id).to eq(1)
      expect(match1.p2_id).to eq(2)

    end

  end
end
