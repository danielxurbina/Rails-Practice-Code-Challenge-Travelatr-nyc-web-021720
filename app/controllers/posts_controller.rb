class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to @post
    else
      render :new
    end
  end

  def index
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update

  end

  private
    
   def post_params
    params.require(:posts).permit(:title, :content, :likes)
   end

end

# Users should be able to create and edit a post
# Users should be able to select a blogger from a dropdown menu
# Users should be able to select a destination from a dropdown menu
# A post should have a title
