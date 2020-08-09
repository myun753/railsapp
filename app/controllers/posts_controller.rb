class PostsController < ApplicationController
  def new
  end
  def create
    @post = Post.new(title: params[:title] , content: params[:content])
    @post.save
  end
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @post = Post.find_by(id: params[:id])
  end
  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to("/posts/index")
  end
end
