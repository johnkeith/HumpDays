require_relative '../rails_helper'

feature "User signs up for HumpDays", js: true do
  # As a user, I want to be able to sign up using my Facebook or Twitter account,
  # so that sign up is simple.

  # As a user, I want to be able to sign up using my email,
  # so that sign up is disconnected from other social accounts.
  background do
    visit root_path
    click_button 'Sign Up'
  end

  scenario "successful sign up using email" do
  end

  scenario "failed sign up using email" do
  end
  
  scenario "successful sign up using Facebook" do
  end

  scenario "failed sign up using Facebook" do
  end

  scenario "successful sign up using Twitter" do
  end

  scenario "failed sign up using Twitter" do
  end
end
