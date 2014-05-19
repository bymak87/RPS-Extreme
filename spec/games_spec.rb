require 'spec_helper'

describe 'games class' do
  context 'initialize method' do
    it "should have game_id, p1/p2 wins, p1/p2 id" do
      data = {p1_id: 1, p2_id:2, game_id:1}
      game1 = RPS::Games.new(data)
      expect(game1.p1_id).to eq(1)
      expect(game1.p2_id).to eq(2)
      expect(game1.game_id).to eq(1)
    end

  end
end
