# frozen_string_literal: true

require 'rails_helper'
require 'spec_support'

RSpec.feature 'User signup email validation', type: :feature do
  let!(:user) { user_signup }

  scenario 'A user must sign up with an email address' do
    fill_in 'user_email', with: ''
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content("Email can't be blank")
  end

  scenario "A user's email address must be unique" do
    click_button 'Sign Up'
    user_signup
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content('Email has already been taken')
  end
end
