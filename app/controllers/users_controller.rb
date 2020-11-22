class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
    @post = Post.new
    @events = Event.where(user_id: @user.id)
    @event = Event.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(current_user), notice: "You have updated profile successfully."
    else
      # @posts = @user.posts
      render "edit"
    end
  end



private
  def user_params
    params.require(:user).permit(:name, :profile, :image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
end


# def following
  #   @user = User.find(params[:id])
  #   @users = @user.followings
  #   render 'show_follow'
  # end

  # def followers
  #   @user = User.find(params[:id])
  #   @users = @user.followers
  #   render 'show_follower'
  # end







