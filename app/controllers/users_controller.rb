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
      session[:user_id] = @user.id
      # redirect to create the user's business card
      redirect_to new_card_path
    else
      flash[:errors] = "Unable to create your account, please try again."
      render :new
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
    session[:user_id] = nil
    Card.find_by(user_id: params[:id]).delete
    @user = User.find(params[:id])
    @user.cards.delete_all
    @user.destroy
    redirect_to root_path
  end

  def show
    @users = User.all
    if params[:id].to_i == current_user.id
      current_user

    # protect routes when trying to access other users info while logged in
    else
      flash[:errors] = "Unauthorized"
      redirect_to root_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
