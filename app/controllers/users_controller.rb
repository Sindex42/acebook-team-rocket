# frozen_string_literal: true

class UsersController < ApplicationController
  ERROR_MSG = "Couldn't create account. " \
              'Please make sure you are using a valid email' \
              ' and password and try again.'

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.email&.downcase!

    if @user.save
      flash[:notice] = 'Account created successfully!'
      redirect_to posts_url
    else
      flash.now.alert = ERROR_MSG
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
