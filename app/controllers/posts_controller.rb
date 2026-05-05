class PostsController < ApplicationController
  before_action :set_post, only: [ :show, :edit, :update, :destroy, :react ]
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @posts = Post.includes(:album, :user, :comments).order(created_at: :desc)
  end

  def show
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  ddef create
  @post = current_user.posts.build(post_params)

  if @post.save
    redirect_to @post
  else
    render :new
  end
end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post updated!"
    else
      render :edit
    end
  end

  def destroy
    if @post.user == current_user
      @post.destroy
      redirect_to posts_path, notice: "Post deleted!"
    else
      redirect_to posts_path, alert: "Not allowed."
    end
  end

  def react
    @post.add_reaction(params[:emoji])
    redirect_back fallback_location: @post
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end
