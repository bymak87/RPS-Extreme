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

  #############
  # User Class
  #############

  describe "User CRUD methods" do
    data = {name: "Joe", password: "123"}
    describe ".create_user" do
      it "creates an entry in @users hash" do
        db.create_user(data)
        expect(db.users.size).to eq(1)
        expect(db.users[1][:id]).to eq(1)
        expect(db.users[1][:name]).to eq("Joe")
        expect(db.users[1][:password]).to eq("123")
      end
      it "returns a user object" do
        user1 = db.create_user(data)
        expect(user1).to be_a(RPS::User)
        expect(user1.id).to eq(1)
        expect(user1.name).to eq("Joe")
        expect(user1.password).to eq("123")
      end
    end
    describe ".get_user" do
      it "returns the correct user object" do
        db.create_user(data)
        user1 = db.get_user(1)
        expect(user1).to be_a(RPS::User)
        expect(user1.id).to eq(1)
        expect(user1.name).to eq("Joe")
        expect(user1.password).to eq("123")
      end
    end

    describe ".update_user" do
      it "updates the correct user" do
        user1 = db.create_user(data)
        expect(user1.name).to eq("Joe")
        user1 = db.update_user(1,{name: "Bob"})
        expect(user1).to be_a(RPS::User)
        expect(user1.id).to eq(1)
        expect(user1.name).to eq("Bob")
        expect(user1.password).to eq("123")
      end
      xit "does nothing if user doesn't exist" do
        # ERROR: undefined method `merge!' for nil:NilClass
        # need to add check in update_user so it doesnt do anything if nil
        db.create_user(data)
        expect(db.users.size).to eq(1)
        user1 = db.update_user(45,{name: "Bob"})
        expect(user1).to eq(nil)
        expect(db.users.size).to eq(1)
      end
    end

    describe ".delete_user" do
      xit "deletes the correct user" do
        # ERROR
        # @users.delete[id] should be
        # @users.delete(id) -- change brackets to parentheses
        db.create_user(data)
        expect(db.users.size).to eq(1)
        db.delete_user(1)
        expect(db.users.size).to eq(0)
      end
      xit "does nothing if user not found or empty hash" do
        db.delete_user(45)
        expect(db.users.size).to eq(0)
        db.create_user(data)
        expect(db.users.size).to eq(1)
        db.delete_user(45)
        expect(db.users.size).to eq(1)
      end
    end
  end

  #############
  # Match Class
  #############

  describe "Match CRUD methods" do
    data = {p1_id: 1, p2_id: 2}
    describe ".create_match" do
      it "creates an entry in @matches hash" do
        ## Error. rename create_matches to create_match (non-plural) for consistency
        ## Error line 45 in db.rb, matchs should be matches (note the "e")
        ## Error in matches.rb, change @match_id to @id for simplicity and consistency
        ##            make sure to also change the attr_reader
        ##        ex. match1.match_id vs match1.id
        db.create_match(data)
        expect(db.matches.size).to eq(1)
        expect(db.matches[1][:match_id]).to eq(1)
        expect(db.matches[1][:p1_id]).to eq(1)
        expect(db.matches[1][:p2_id]).to eq(2)
      end
      it "returns a Match object" do
        match1 = db.create_match(data)
        expect(match1).to be_a(RPS::Match)
        expect(match1.match_id).to eq(1)
        expect(match1.p1_id).to eq(1)
        expect(match1.p2_id).to eq(2)
      end
    end

    describe ".get_match" do
      it "returns the correct match object" do
        db.create_match(data)
        match1 = db.get_match(1)
        expect(match1).to be_a(RPS::Match)
        expect(match1.p1_id).to eq(1)
        expect(match1.p2_id).to eq(2)
      end
    end

    describe ".update_match" do
      it "updates the correct match" do
        match1 = db.create_match(data)
        expect(match1.p1_id).to eq(1)
        expect(match1.p2_id).to eq(2)
        match1 = db.update_match(1,{p1_id: 10, p2_id: 20})
        expect(match1).to be_a(RPS::Match)
        expect(match1.p1_id).to eq(10)
        expect(match1.p2_id).to eq(20)
      end
      xit "does nothing if match doesn't exist" do
        # ERROR: undefined method `merge!' for nil:NilClass
        # need to add check in update_match so it doesnt do anything if nil
        db.create_match(data)
        expect(db.matches.size).to eq(1)
        match1 = db.update_match(45,{p1_id: 10, p2_id: 20})
        expect(match1).to eq(nil)
        expect(db.matches.size).to eq(1)
      end
    end

    describe ".delete_match" do
      it "deletes the correct match" do
        # ERROR
        # @matchs.delete[id] should be
        # @matchs.delete(id) -- change brackets to parentheses
        db.create_match(data)
        expect(db.matches.size).to eq(1)
        db.delete_match(1)
        expect(db.matches.size).to eq(0)
      end
      it "does nothing if match not found or empty hash" do
        db.delete_match(45)
        expect(db.matches.size).to eq(0)
        db.create_match(data)
        expect(db.matches.size).to eq(1)
        db.delete_match(45)
        expect(db.matches.size).to eq(1)
      end
    end
  end

end
