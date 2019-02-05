# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'post/index', type: :feature do
  let!(:user) { user_signup }

  scenario 'Can sign up' do
    click_button 'Sign Up'
    click_on 'New post'
    fill_in 'Message', with: 'Hello'
    click_button 'Submit'
    click_on 'New post'
    fill_in 'Message', with: 'world'
    click_button 'Submit'
    expect('world').to appear_before('Hello')
  end
end
