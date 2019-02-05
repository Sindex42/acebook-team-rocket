# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authorize
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: 'You must login to access this page.' if
    current_user.nil?
  end

  # def require_login
  #   unless logged_in?
  #     flash[:error] = "You must be logged in to access this section"
  #     redirect_to new_login_url
  #   end
  # end
end
