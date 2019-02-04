# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:login][:email].downcase)
    if user&.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to posts_url, notice: "Welcome #{user.name}"
    end
  end
end
