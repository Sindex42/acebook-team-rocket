# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'edit post', type: :feature do
  let!(:user) { user_signup }

  scenario 'Can edit post' do
    click_button 'Sign Up'
    click_on 'New post'
    fill_in 'Message', with: 'Hello'
    click_button 'Submit'
    click_on 'Edit'
    expect(current_path).to eq '/posts/3/edit'
  end

  scenario 'Can delete post' do
    click_button 'Sign Up'
    click_on 'New post'
    fill_in 'Message', with: 'Hello'
    click_button 'Submit'
    expect(page).to have_link('Delete', href: '/posts/4')
  end
end
