# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email&.downcase!

    if @user.save
      flash[:notice] = 'Account created successfully!'
      session[:user_id] = @user.id.to_s
      redirect_to posts_url
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
end
