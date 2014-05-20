require 'spec_helper'

describe "database" do

  let(:db) {RPS::DB.new}
  describe "db as a singleton" do
    it "returns a DB object" do
      expect(db).to be_a(RPS::DB)
    end
  end
  describe ".initialize method" do
    it "initialized db should empty hashes and id counters as 0" do
      expect(db.users).to be_a(Hash)
      expect(db.users.size).to eq(0)
      expect(db.next_user_id).to eq(0)
      expect(db.matches).to be_a(Hash)
      expect(db.matches.size).to eq(0)
      expect(db.next_match_id).to eq(0)
      expect(db.games).to be_a(Hash)
      expect(db.games.size).to eq(0)
      expect(db.next_game_id).to eq(0)
    end
  end

  describe "User CRUD methods" do
    data = {name: "Joe", password: "123"}
    describe ".create_user" do
      it "creates an entry in @users hash" do
        db.create_user(data)
        expect(db.users.size).to eq(1)
        expect(db.users[1][:name]).to eq("Joe")
        expect(db.users[1][:password]).to eq("123")
      end
      it "returns a user object" do
        user1 = db.create_user(data)
        expect(user1).to be_a(RPS::User)
        expect(user1.name).to eq("Joe")
        expect(user1.password).to eq("123")
      end
    end
    describe ".get_user" do
      it "returns the correct user object" do
        db.create_user(data)
        user1 = db.get_user(1)
        expect(user1).to be_a(RPS::User)
        expect(user1.name).to eq("Joe")
        expect(user1.password).to eq("123")
      end
    end

    describe ".update_user" do
      it "updates the correct user" do
        db.create_user(data)
        user1 = db.get_user(1)
        expect(user1).to be_a(RPS::User)
        expect(user1.name).to eq("Joe")
        expect(user1.password).to eq("123")
      end
      it "does nothing if user doesn't exist" do
        
      end
    end

    describe ".delete_user" do

    end
  end

end
