class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :correct_user, only: [:edit, :update, :destroy]


  def index
    @posts = Post.all
    @user = current_user
    # @post_comments = Comment.where(book_id: @book.id)
  end

  def show
    @post = Post.find(params[:id])
    @user = current_user
    @posts = @user.posts
    @post_comment = PostComment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post), notice: "You have created post successfully."
    else
      @user = current_user
      @posts = Book.all
    end
      render 'index'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "You have updated post successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:sentence, :image, :meaning, :explanation)
  end

  def correct_user
    post = Post.find(params[:id])
    if current_user != post.user
       redirect_to posts_path
    end
  end
end




