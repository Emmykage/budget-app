require 'rails_helper'

RSpec.describe 'Groups page', type: :feature do
  describe 'with FactoryBot login' do
    before(:each) do
      @user = FactoryBot.create(:user)
      Group.create(name: 'McDonalds', icon: 'https://marcorockmusic1.files.wordpress.com/2011/10/loveless.jpg',
                   user: @user)
      Group.create(name: 'Burger King', icon: 'https://marcorockmusic1.files.wordpress.com/2011/10/loveless.jpg',
                   user: @user)
      Group.create(name: 'Mostaza', icon: 'https://marcorockmusic1.files.wordpress.com/2011/10/loveless.jpg',
                   user: @user)
    end

    it 'should present groups page' do
      sign_in @user
      visit '/groups'
      expect(current_path).to eq(groups_path)
    end

    it 'should have content' do
      sign_in @user
      visit groups_path
      expect(page).to have_content('McDonalds')
      expect(page).to have_content('Burger King')
      expect(page).to have_content('Mostaza')
      expect(page).to_not have_content('Sign up')
    end

    it 'should have a link to "ADD A NEW GROUP"' do
      sign_in @user
      visit groups_path
      expect(page).to have_link('ADD A NEW GROUP')
    end

    it 'should go to new group page when clicking on "ADD A NEW GROUP" button' do
      sign_in @user
      visit groups_path
      click_link 'ADD A NEW GROUP'
      expect(current_path).to eq(new_group_path)
    end

    it 'should have new group page content' do
      sign_in @user
      visit groups_path
      click_link 'ADD A NEW GROUP'
      expect(page).to have_content('New group')
    end

    it 'should have new group page button "Save"' do
      sign_in @user
      visit groups_path
      click_link 'ADD A NEW GROUP'
      expect(page).to have_button('Save')
    end

    it 'should have new group page input fields' do
      sign_in @user
      visit groups_path
      click_link 'ADD A NEW GROUP'
      expect(page).to have_field('Name')
      expect(page).to have_field('Logo (url)')
    end
  end
end
