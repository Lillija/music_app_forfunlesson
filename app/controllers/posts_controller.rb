class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

def create
  album = Album.find_or_initialize_by(name: params[:post][:album_name])
  album.artist = params[:post][:artist]
  album.cover_url = params[:post][:image_url]

  unless album.save
    render :new and return
  end

  @post = current_user.posts.new(post_params)
  @post.album = album

  if @post.save
    redirect_to @post
  else
    render :new
  end
end

  private

def post_params
  params.require(:post).permit(:content)
end
end