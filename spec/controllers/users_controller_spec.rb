# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'GET /new ' do
    it 'responds with 200' do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /' do
    it 'responds with 200' do
      post :create, params: { user: {
        name: 'Edam Brie',
        email: 'cheese@mail.com',
        password: 'likecheese'
      } }
      
      expect(response).to redirect_to(posts_url)
    end

    it 'creates a post' do
      post :create, params: { user: {
        name: 'Edam Brie',
        email: 'cheese@mail.com',
        password: 'likecheese'
      } }

      expect(User.find_by(email: 'cheese@mail.com')).to be
    end
  end
end
