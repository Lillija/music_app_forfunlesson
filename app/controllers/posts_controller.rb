class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order(created_at: :desc)
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user == current_user
    redirect_to root_path
  end

  # ⭐ REACTIONS SYSTEM
  def react
    post = Post.find(params[:id])
    emoji = params[:emoji]

    post.reactions ||= {}
    post.reactions[emoji] ||= 0
    post.reactions[emoji] += 1

    post.save!

    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:content, :album_name, :artist)
  end
end