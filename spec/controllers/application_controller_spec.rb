# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe ApplicationController, type: :controller do
  let!(:user) do
    user = User.create(
      id: 1,
      name: 'Officer Jenny',
      email: 'Misty@water.com',
      password: 'ihatecrime'
    )
    session[:user_id] = user.id.to_s
  end

  describe '#current user' do
    it 'looks up current user based on user id' do
      user = subject.current_user
      expect(user.name).to eq 'Officer Jenny'
    end
  end
end
