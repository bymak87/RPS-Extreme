require 'spec_helper'

describe 'users class' do
  context 'initialize method' do
    it "should have id, name and password" do
      data = {id: 1, name: "amy", password: "pass"}
      user1 = RPS::User.new(data)
      expect(user1.id).to eq(1)
      expect(user1.name).to eq("amy")
      expect(user1.password).to eq("pass")
    end

  end
end
