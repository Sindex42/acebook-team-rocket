# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'edit post', type: :feature do
  let!(:user) { user_signup }

  scenario 'Can edit post' do
    hello_message
    click_on 'Edit'
    expect(current_path).to eq '/posts/3/edit'
  end

  scenario 'Can delete post' do
    hello_message
    expect(page).to have_link('Delete', href: '/posts/4')
  end
end
