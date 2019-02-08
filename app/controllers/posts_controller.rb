# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :require_login

  def new
    @post = current_user.posts.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
    redirect_to posts_url
  end

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show; end

  def update
    @post = Post.find(params[:id])
    @post.message = params[:post][:message]
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:message, :user_id)
  end

  def require_login
    unless logged_in?
      flash[:alert] = 'You must be logged in to access this section'
      redirect_to root_path
    end
  end

  def logged_in?
    !current_user.nil?
  end
end
