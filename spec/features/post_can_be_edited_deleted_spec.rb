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
    click_button 'Edit'
    fill_in 'Message', with: 'Team Rocket HQ'
    click_button 'Submit'
    expect(page).to have_content('Team Rocket HQ')
  end

  scenario 'Can delete post' do
    hello_message
    expect(page).to have_link('Delete', href: '/posts/4')
  end
end
