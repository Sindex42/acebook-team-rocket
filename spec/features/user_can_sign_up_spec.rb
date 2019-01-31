# frozen_string_literal: true

require 'rails_helper'
require 'spec_support'

RSpec.feature 'Home Page', type: :feature do
  scenario 'Can sign up' do
    userSignup
    click_button 'Sign Up'

    expect(current_path).to eq '/posts'
    expect(page).to have_content('Account created successfully!')
  end

  scenario 'A user must sign up with an email address' do
    userSignup
    fill_in 'user_email', with: ''
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content("Email can't be blank")
  end

  scenario "A user's passwords must be equal" do
    userSignup
    fill_in 'user_password_confirmation', with: 'ih8crime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
  end

  scenario "A user's password must be 10 characters or shorter" do
    message = 'Password is too long (maximum is 10 characters)'
    userSignup
    fill_in 'user_password', with: 'ireallyhatecrime'
    fill_in 'user_password_confirmation', with: 'ireallyhatecrime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content(message)
  end

  scenario "A user's password must be 6 characters or longer" do
    message = 'Password is too short (minimum is 6 characters)'
    userSignup
    fill_in 'user_password', with: 'crime'
    fill_in 'user_password_confirmation', with: 'crime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content(message)
  end
end
