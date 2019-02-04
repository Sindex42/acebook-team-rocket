# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:login][:email].downcase)
    if user&.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to posts_url, notice: "Welcome #{user.name}"
    else
      flash.now.alert = "Incorrect email or password. Please try again."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: 'Logged out'
  end
end
