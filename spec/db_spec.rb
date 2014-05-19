require 'spec_helper'

describe RPS::DB do

  let(:db) {RPS::DB.new}
  describe "db as a singleton" do
    it "returns a DB object" do
      expect(db).to be_a(RPS::DB)
    end
    it "should have the correct tables" do
    end
    it "initialized db should have empty tables" do
    end

  end


end
