class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    comment = post.comments.new(comment_params)
    comment.user = current_user

    if comment.save
      redirect_to posts_path
    else
      redirect_to posts_path
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    post = comment.post

    comment.destroy if comment.user == current_user

    redirect_to posts_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end