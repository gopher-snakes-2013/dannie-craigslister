class PostsController < ApplicationController
  def index
    @category = Category.find params[:category_id]
    @posts = Post.where(category_id: params[:category_id])
    p @posts
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.category_id = params[:category_id]
    @post.save
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post_to_edit = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update_attributes(title: params[:post][:title], content: params[:post][:content])
  end

  def destroy
    @post_to_be_deleted = Post.find(params[:id]).destroy
    redirect_to category_posts_path
  end

end