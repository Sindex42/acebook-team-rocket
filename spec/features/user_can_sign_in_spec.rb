# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Sign In', type: :feature do
  let!(:user) do
    user_signup
    click_button 'Sign Up'
  end

  scenario 'Can sign in' do
    visit '/'
    click_link 'Sign In'
    fill_in 'login_email', with: 'Jenny@PalletTownPD.com'
    fill_in 'login_password', with: 'ihatecrime'
    click_button 'Sign In'
    expect(current_path).to eq '/posts'
    expect(page).to have_content('Welcome Officer Jenny')
  end
end
