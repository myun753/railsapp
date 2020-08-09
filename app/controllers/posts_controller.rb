class PostsController < ApplicationController
  def new
  end
  def create
    @post = Post.new(title: params[:title] , content: params[:content])
    @post.save
    redirect_to("posts/index")
  end
  def index
    @posts = Post.all.order(created_at: :desc)
  end
end
