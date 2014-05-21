require 'spec_helper'

describe TM::CreateUser do
  it 'returns error if correct data is not provided' do
    data = {id: 1, name: "amy", password: "pass"}

    result = subject.run(data)
    expect(result.error?).to eq(true)
    expect(result.error).to eq(:enter_valid_name_and_password)
  end

  it 'returns newly created user' do
    data = {id: 1, name: "amy", password: "pass"}

    result = subject.run(data)
    expect(result.user.name).to eq('amy')
    expect(result.user.password).to eq('pass')
    expect(result.user.id).to eq(1)

  end
end
