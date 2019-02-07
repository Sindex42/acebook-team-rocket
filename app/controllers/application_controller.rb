# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_origin
  before_action :set_headers

  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def set_origin
    @origin = request.headers['HTTP_ORIGIN']
  end

  def set_headers
    if @origin
      allowed = ['localhost', 'https://acebook-team-rocket.herokuapp.com']
      allowed.each do |host|
        if %r{^https?://#{Regexp.escape(host)}}i.match?(@origin)
          headers['Access-Control-Allow-Origin'] = @origin
          break
        end
      end
      # or '*' for public access
      # headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'GET, OPTIONS'
      headers['Access-Control-Request-Method'] = '*'
      headers['Access-Control-Allow-Headers'] = 'Content-Type'
    end
  end
end
