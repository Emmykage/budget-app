require 'rails_helper'

RSpec.describe Trade, type: :model do
  user = User.new(name: 'Anyone', email: 'email@email.com', password: '123456')
  trade = Trade.new(name: 'Ice cream', amount: '4.3', user:)
  it 'should return trade as valid' do
    expect(trade).to be_valid
  end
  it 'should have trade name as Ice cream' do
    expect(trade.name).to eq('Ice cream')
  end
  it 'should have trade amount as 4.3' do
    expect(trade.amount).to eq(4.3)
  end
end
