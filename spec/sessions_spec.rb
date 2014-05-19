require 'spec_helper'

describe 'sessions class' do
  context 'initialize method' do
    it "should have players, player win counts, and status " do
      data = {session_id: 1}
     session1 = RPS::Sessions.new(data)
      expect(session1.session_id).to eq(1)


    end

  end
end
