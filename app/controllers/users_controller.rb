class UsersController < ApplicationController
  # protect these routes; only logged in users can access these actions
  before_action :authorize, only: [:show, :edit, :update, :destroy]

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path
    # else
      # flash[:error]
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # patch to 'users/:id'
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy
  end

  def show
    # current_user
    # binding.pry
    if params[:id].to_i == current_user.id
      current_user
    # protect routes when trying to access other users info while logged in
    else
      # render 404 or redirect back to root or login or whatever you want
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
