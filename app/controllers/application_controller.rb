# frozen_string_literal: true

# comment
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
