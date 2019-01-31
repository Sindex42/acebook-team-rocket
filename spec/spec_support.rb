  def userSignup
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Officer Jenny'
    fill_in 'user_email', with: 'Jenny@PalletTownPD.com'
    fill_in 'user_password', with: 'ihatecrime'
    fill_in 'user_password_confirmation', with: 'ihatecrime'
  end
