class PostsController < ApplicationController
  # before_action :find_post, only: %i[show edit update destroy]

  # def index
  #   @posts = Post.order(created_at: :desc)
  # end

  # def new
  #  @post = Post.new
  # end

  # def create
  #   # post params define in private
  #   @post = Post.new(post_params)
  #   if @post.save
  #     redirect_to @post
  #   else
  #     render 'new'
  #   end
  # end

  # # How the data is taking out from out model and saving it to the instance variable

  # def show

  # end

  # def edit

  # end

  # def update

  #  if@post.update(post_params)
  #   redirect_to @post
  #  else
  #   render 'edit'
  #  end
  # end

  # def destroy

  #   @post.destroy
  #   redirect_to root_path
  # end


  # #let define what is posts_params
  # private
  # def find_post
  #   @post = Post.find(params[:id])

  # end

  # def post_params

  # params.require(:post).permit(:title, :body)

  # end
  def index
    @posts = Post.all
  end

  def show
   @post = Post.find(params[:id])
  end

  def new
     @post = Post.new
  end

  def create
    @post = Post.new(params.require(:posts).permit(:title, :body))

    if @post.save
      redirect_to posts_path, :notice => "post saved"
    else
      render 'new'
    end
  end

  def update; end

  def destroy; end

  def edit
  end

end
