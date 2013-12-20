class CommentsController < ApplicationController
  def create
@post = Post.find(params[:post_id])
@comment = @post.comments.buid(params[:comment])
comment.save
redirect_to @posts
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.post
  end
end
