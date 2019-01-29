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

  scenario "A user can only sign up if passwords are equal" do
    visit "/"
    click_link "Sign Up"
    fill_in "user_name", with: "Officer Jenny"
    fill_in "user_email", with: "Jenny@PalletTownPD.com"
    fill_in "user_password", with: "ihatecrime"
    fill_in "user_password_confirmation", with: "ih8crime"
    click_button "Sign Up"

    expect(current_path).to eq '/users'
    expect(page).to have_content("Couldn't create account")
  end
end
