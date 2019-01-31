# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Home Page', type: :feature do
  scenario 'Can sign up' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Edam Brie'
    fill_in 'user_email', with: 'cheese@mail.com'
    fill_in 'user_password', with: 'likecheese'
    fill_in 'user_password_confirmation', with: 'likecheese'
    click_button 'Sign Up'

    expect(current_path).to eq '/posts'
    expect(page).to have_content('Account created successfully!')
  end

  scenario 'A user must sign up with an email address' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Officer Jenny'
    fill_in 'user_password', with: 'ihatecrime'
    fill_in 'user_password_confirmation', with: 'ihatecrime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content("Email can't be blank")
  end

  scenario "A user's passwords must be equal" do
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Officer Jenny'
    fill_in 'user_email', with: 'Jenny@PalletTownPD.com'
    fill_in 'user_password', with: 'ihatecrime'
    fill_in 'user_password_confirmation', with: 'ih8crime'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
  end

  scenario "A user's password must be 10 characters or shorter" do
    message = 'Password is too long (maximum is 10 characters)'
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Edam Brie'
    fill_in 'user_email', with: 'cheese@email.com'
    fill_in 'user_password', with: 'ilikecheese'
    fill_in 'user_password_confirmation', with: 'ilikecheese'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content(message)
  end

  scenario "A user's password must be 6 characters or longer" do
    message = 'Password is too short (minimum is 6 characters)'
    visit '/'
    click_link 'Sign Up'
    fill_in 'user_name', with: 'Edam Brie'
    fill_in 'user_email', with: 'cheese@email.com'
    fill_in 'user_password', with: 'brie'
    fill_in 'user_password_confirmation', with: 'brie'
    click_button 'Sign Up'

    expect(current_path).to eq '/users'
    expect(page).to have_content("couldn't create account")
    expect(page).to have_content(message)
  end
end
