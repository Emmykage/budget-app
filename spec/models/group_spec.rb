require 'rails_helper'

RSpec.describe Group, type: :model do
  user = User.new(name: 'Anyone', email: 'email@email.com', password: '123456')
  group = Group.new(name: 'McDonalds', icon: 'https://marcorockmusic1.files.wordpress.com/2011/10/loveless.jpg', user:)
  it 'should return group as valid' do
    expect(group).to be_valid
  end
  it 'should have group name as McDonalds' do
    expect(group.name).to eq('McDonalds')
  end
  it 'should have group icon as the url' do
    expect(group.icon).to eq('https://marcorockmusic1.files.wordpress.com/2011/10/loveless.jpg')
  end
end
