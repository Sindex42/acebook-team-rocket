# frozen_string_literal: true

def user_signup
  visit '/'
  click_link 'Sign Up'
  fill_in 'user_name', with: 'Officer Jenny'
  fill_in 'user_email', with: 'Jenny@PalletTownPD.com'
  fill_in 'user_password', with: 'ihatecrime'
  fill_in 'user_password_confirmation', with: 'ihatecrime'
end

def hello_message
  click_button 'Sign Up'
  click_on 'New post'
  fill_in 'Message', with: 'Hello'
  click_button 'Submit'
end
