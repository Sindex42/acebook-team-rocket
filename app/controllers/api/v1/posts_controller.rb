# frozen_string_literal: true

class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
    render json: @posts
  end
end
