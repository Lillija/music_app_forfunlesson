class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @posts = Post.all.desc(:created_at)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def react
    post = Post.find(params[:id])
    post.react!(params[:emoji])
    redirect_to posts_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy if post.user == current_user
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :artist, :image_url, :content)
  end
end