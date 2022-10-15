require 'rails_helper'

RSpec.describe 'Groups page', type: :feature do
  describe 'with FactoryBot login' do
    before(:each) do
      @user = FactoryBot.create(:user)
      @group = Group.create(name: 'McDonalds', icon: 'https://marcorockmusic1.files.wordpress.com/2011/10/loveless.jpg',
                            user: @user)
      @trade = Trade.create(name: 'Ice cream', amount: '4.3', user: @user, group_id: @group.id)
    end

    it 'should present trades page' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      expect(current_path).to eq(group_trades_path(@group.id))
    end

    it 'should have content' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      expect(page).to have_content('Trades')
      expect(page).to have_content('Ice cream')
      expect(page).to have_content('4.3')
      expect(page).to_not have_content('Sign up')
    end

    it 'should have a link to "Add a new trade"' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      expect(page).to have_link('Add a new trade')
    end

    it 'should go to new trade page when clicking on "Add a new trade" button' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      click_link 'Add a new trade'
      expect(current_path).to eq(new_group_trade_path(@group.id))
    end

    it 'should have new trade page content' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      click_link 'Add a new trade'
      expect(page).to have_content('New trade')
    end

    it 'should have new trade page button "Save"' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      click_link 'Add a new trade'
      expect(page).to have_button('Save')
    end

    it 'should have new trade page input fields' do
      sign_in @user
      visit "/groups/#{@group.id}/trades"
      click_link 'Add a new trade'
      expect(page).to have_field('Name')
      expect(page).to have_field('Amount (in dollars)')
    end
  end
end
