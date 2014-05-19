require 'spec_helper'

describe 'invites class' do
  context 'initialize method' do
    it "should have invitee and inviter, status " do
      data = {from_user: "byma", to_user: "hihi"}
     invite1 = RPS::Invites.new(data)
      expect(invite1.from_user).to eq("byma")
      expect(invite1.to_user).to eq("hihi")

    end

  end
end
