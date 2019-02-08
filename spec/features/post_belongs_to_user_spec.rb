# frozen_string_literal: true

require 'rails_helper'
RSpec.feature 'post user', type: :feature do
  scenario 'Post have an owner' do
    hello_message
    expect(page).to have_content('by Officer Jenny')
  end
end
