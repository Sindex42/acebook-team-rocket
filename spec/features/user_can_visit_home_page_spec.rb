# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Home Page', type: :feature do
  scenario 'Can see a link to the sign up page' do
    visit '/'
    expect(page).to have_link 'Sign Up'
  end
end
