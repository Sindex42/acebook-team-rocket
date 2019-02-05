# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'delete post', type: :feature do
  let!(:user) { user_signup }

  scenario 'Can delete post' do
    hello_message
    expect(page).to have_link('Delete')
  end

  scenario 'A deleted post no longer is visible' do
    specific_message
    click_on 'Delete'
    expect(page).to_not have_content('Electric type')
  end
end
