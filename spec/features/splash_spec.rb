require 'rails_helper'

RSpec.describe 'Splash screen', type: :feature do
  describe 'without FactoryBot login' do
    it 'should present splash screen content' do
      visit root_path
      expect(page).to have_content('Cash Management')
      expect(page).to have_content('Sign up')
      expect(page).to have_content('Log in')
      expect(page).to_not have_content('Someone')
      expect(page).to_not have_content('Sign out')
      expect(page).to_not have_content('Groups')
    end

    it 'should go to new user session when click on "Log in"' do
      visit root_path
      click_link 'Log in'
      expect(current_path).to eq(new_user_session_path)
    end

    it 'should have new user session content' do
      visit root_path
      click_link 'Log in'
      expect(page).to have_content('Remember me')
    end

    it 'should have new user session button content' do
      visit root_path
      click_link 'Log in'
      expect(page).to have_button('Log in')
    end

    it 'should have new user session with input fields' do
      visit root_path
      click_link 'Log in'
      expect(page).to have_field('Email')
      expect(page).to have_field('Password')
    end
  end

  describe 'with FactoryBot login' do
    before(:each) do
      @user = FactoryBot.create(:user)
    end

    it 'will present navbar options' do
      sign_in @user
      visit root_path
      expect(page).to_not have_content('Sign up')
      expect(page).to_not have_content('Log in')
      expect(page).to have_content('Sign out')
      expect(page).to have_content('Groups')
    end

    it 'will logout when click on "Sign out"' do
      sign_in @user
      visit root_path
      click_button 'Sign out'
      expect(current_path).to eq(root_path)
      expect(page).to have_content('Sign up')
      expect(page).to have_content('Log in')
      expect(page).to_not have_content('Someone')
      expect(page).to_not have_content('Sign out')
    end
  end
end
