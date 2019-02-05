# frozen_string_literal: true

require 'rails_helper'
RSpec.feature 'edit post', type: :feature do
  let!(:user) { user_signup }

  scenario 'Can edit post' do
    hello_message
    expect(page).to have_link('Edit', href: '/posts/3/edit')
  end

  scenario 'An edited post can be displayed' do
    hello_message
    click_on 'Edit'
    fill_in 'Message', with: 'Team Rocket HQ'
    click_button 'Submit'
    expect(page).to have_content('Team Rocket HQ')
  end

  scenario 'Only posts less than 10 minutes old can be edited' do
    click_button 'Sign Up'
    click_on 'New post'
    Timecop.travel(2000, 11, 24, 0o1, 0o4, 44)
    fill_in 'post_message', with: 'Y2K was a fraud'
    click_on 'Submit'
    Timecop.travel(2001, 11, 24, 0o1, 0o4, 44)
    visit '/posts/'
    expect(page).not_to have_content('Edit')
  end
end
