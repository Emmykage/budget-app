require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(name: 'Anyone', email: 'email@email.com', password: '123456')
  it 'should return user as valid' do
    expect(user).to be_valid
  end
  it 'return user name as Anyone' do
    expect(user.name).to eq('Anyone')
  end
  it 'should return user email as email@email.com' do
    expect(user.email).to eq('email@email.com')
  end
  it 'should not return user email as 123456' do
    expect(user.email).to_not eq('123456')
  end
end
