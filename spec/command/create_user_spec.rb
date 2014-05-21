require 'spec_helper'

describe RPS::CreateUser do
  it 'returns error if correct data is not provided' do
    data = {id: 1, name: "amy"}

    result = subject.run(data)
     expect(result[:success?]).to eq(false)
     expect(result[:error]).to eq("You need to provide a username and password.")
  end

  it 'returns newly created user' do
    data = {id: 1, name: "amy", password: "pass"}

    result = subject.run(data)
    expect(result[:user].name).to eq('amy')
    expect(result[:user].password).to eq('pass')
    expect(result[:user].id).to eq(1)

  end
end
