# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Home Page', type: :feature do
  let!(:user) { user_signup }

  scenario 'Can sign up' do
    click_button 'Sign Up'

    expect(current_path).to eq '/posts'
    expect(page).to have_content('Account created successfully!')
  end

  scenario 'Signing up logs user in' do
    click_button 'Sign Up'
    expect(page).to have_content 'Logged in as Officer Jenny'
  end
end
