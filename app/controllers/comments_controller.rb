class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.create(comment_params)
  end

  def update
    this_comment.update(comment_params)
  end

  def delete
    this_comment.destroy
  end

private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id)
  end

  def this_comment
    @comment = Comment.find_by(params[:id])
  end


end
