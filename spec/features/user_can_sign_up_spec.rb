require 'rails_helper'

RSpec.feature 'Home Page', type: :feature do
  scenario "Can sign up" do
    visit "/"
    click_link "Sign Up"
    fill_in "user_name", with: "Edam Brie"
    fill_in "user_email", with: "cheese@mail.com"
    fill_in "user_password", with: "ilikecheese"
    fill_in "user_password_confirmation", with: "ilikecheese"
    click_button "Sign Up"

    expect(current_path).to eq '/posts'
    expect(page).to have_content('Account created successfully!')
  end
end
