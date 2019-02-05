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
  user_signup
  click_button 'Sign Up'
  click_link 'New post'
  fill_in 'post_message', with: 'hello'
  click_on 'Submit'
end

def specific_message
  visit '/'
  click_link 'Sign Up'
  fill_in 'user_name', with: 'Brock'
  fill_in 'user_email', with: 'Brock@rock.com'
  fill_in 'user_password', with: 'geodude'
  fill_in 'user_password_confirmation', with: 'geodude'
  click_button 'Sign Up'
  click_on 'New post'
  fill_in 'post_message', with: 'How did an Electric type beat me...'
  click_on 'Submit'
end
