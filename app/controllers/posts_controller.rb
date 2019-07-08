class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(post_params)
  end

  def update
    this_post.update(post_params)
  end

  def delete
    this_post.destroy
  end

  private

  def this_post
    @post = Post.find_by(params[:id])
  end

  def post_params
    params.require(:post).permit(:content, :post_id, :user_id)
  end

end
