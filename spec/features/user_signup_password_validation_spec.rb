# frozen_string_literal: true

require 'rails_helper'
require 'spec_support'

RSpec.feature 'User signup password validation', type: :feature do
  let!(:user) { user_signup }

  scenario "A user's passwords must be equal" do
    fill_in 'user_password_confirmation', with: 'ih8crime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("Password confirmation doesn't match Password")
  end

  scenario "A user's password must be 10 characters or shorter" do
    message = 'Password is too long (maximum is 10 characters)'

    fill_in 'user_password', with: 'ireallyhatecrime'
    fill_in 'user_password_confirmation', with: 'ireallyhatecrime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content(message)
  end

  scenario "A user's password must be 6 characters or longer" do
    message = 'Password is too short (minimum is 6 characters)'

    fill_in 'user_password', with: 'crime'
    fill_in 'user_password_confirmation', with: 'crime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content(message)
  end
end
