require 'spec_helper'

describe RPS::AddPlayerToMatch do
  xit 'successfully adds players to a match' do
    match = RPS.db.create_match('Match 001')
    data = {id: 1, name: "amy", password: "pass"}

  end
end
