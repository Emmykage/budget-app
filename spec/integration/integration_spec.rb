require 'rails_helper'

RSpec.describe 'Integration', type: :system do
  before(:each) do
    @user = User.new(name: 'morris', email: 'emmiemenz@gmail.com', password: 'chemistry')
    @user.save
    @group = Group.new(name: 'office',
                       icon: 'photo',
                       user: @user)
    @group.save
    sign_in(@user)
  end

  describe 'Categories' do
    it 'show the header' do
      visit '/groups'
      expect(page.body).to include('Categories')
    end

    it 'Add new category redirects to category' do
      visit '/groups'
      click_on('Add Category group')
      sleep(0.1)
      expect(page.body).to include('add Category')
    end
  end

  describe 'Transaction' do
    it 'Add a new expense redirects to expense' do
      visit "/groups/#{@group.id}/entities"
      click_on('New Transaction')
      sleep(0.1)
      expect(page.body).to include('New Transaction')
    end
  end
end
