# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Redirect if not logged in', type: :feature do
  scenario 'A user tries to access the posts page' do
    message = 'You must be logged in to access this section'
    visit '/posts'

    expect(current_path).to eq '/'
    expect(page).to have_content message
  end

  scenario 'A user tries to create a new post' do
    message = 'You must be logged in to access this section'
    visit '/posts/new'

    expect(current_path).to eq '/'
    expect(page).to have_content message
  end
end
