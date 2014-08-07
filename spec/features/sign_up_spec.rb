require 'rails_helper'

feature "User signs up for HumpDays", js: true do
  # As a user, I want to be able to sign up using my email,
  # so that sign up is disconnected from other social accounts.

  # As a user, I want to be able to sign up using my Facebook or Twitter account,
  # so that sign up is simple.
  background do
    click_sign_up
  end

  scenario "successful sign up using email" do
    click_button "Sign up using email"
    fill_in "Email Address", with: "test@example.com"
    fill_in "Password", with: "password1234"
    fill_in "Password Confirmation", with: "password1234"
    click_button "Create account"
    success_notification
  end

  scenario "failed sign up using email" do
    click_button "Sign up using email"
    fill_in "Email Address", with: "test@example.com"
    fill_in "Password", with: "password1234"
    click_button "Create account"
    faliure_notification
  end
  
  scenario "successful sign up using Facebook" do
    click_button "Sign up using Facebook"
    success_notification
  end

  scenario "failed sign up using Facebook" do
    click_button "Sign up using Facebook"
    faliure_notification
  end

  scenario "successful sign up using Twitter" do
    click_button "Sign up using Twitter"
    success_notification
  end

  scenario "failed sign up using Twitter" do
    click_button "Sign up using Twitter"
    faliure_notification
  end
end
