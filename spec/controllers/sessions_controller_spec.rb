# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:user) do
    User.create(
      name: 'Officer Jenny',
      email: 'Misty@water.com',
      password: 'ihatecrime'
    )
  end

  describe 'GET /new' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /creates' do
    it 'responds with 200' do
      post :create, params: { login: {
        email: 'Misty@water.com',
        password: 'ihatecrime'
      } }
      expect(response).to redirect_to '/posts'
    end
  end

  describe 'DELETE /' do
    it 'redirects to the login page' do
      delete :destroy
      expect(response).to redirect_to '/login'
    end
  end
end
