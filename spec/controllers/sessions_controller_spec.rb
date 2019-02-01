require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
 let!(:user) do
   User.create(
     name: 'Officer Jenny',
     email: 'Jenny@PalletTownPD',
     password: 'ihatecrime'
   )
 end

  describe 'GET /new' do
    get :new
    expect(response). to have_http_status(200)
  end

  describe 'POST /' do
    it 'responds with 200' do
      post :create, params: { user: {
        email: 'Jenny@PalletTownPD',
        password: 'ihatecrime'
      } }

      expect(response).to redirect_to(posts_url)
    end
  end
end
