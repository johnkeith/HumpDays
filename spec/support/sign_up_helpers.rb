module SignUpHelpers
  def click_sign_up
    visit root_path
    click_button 'Sign Up'
  end

  def success_notification(text)
    expect(page).to have_css '.flash.notice',
      text: "Account succcessfully created!"
  end

  def faliure_notification(text)
    expect(page).to have_css '.flash.alert', 
      text: "There was a problem! Please fill in required fields."
    expect(page).to_not have_css '.flash.notice'
  end
end
