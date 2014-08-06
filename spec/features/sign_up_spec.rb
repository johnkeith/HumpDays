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
    click_button "Sign up using email"
    fill_in "Email Address", with: "test@example.com"
    fill_in "Password", with: "password1234"
    fill_in "Password Confirmation", with: "password1234"
    click_button "Create account"
    expect(page).to have_content "Account succcessfully created!"
  end

  scenario "failed sign up using email" do
    click_button "Sign up using email"
    fill_in "Email Address", with: "test@example.com"
    fill_in "Password", with: "password1234"
    click_button "Create account"
    expect_page.to have_content "There was a problem! Please fill in required fields."
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
