class CardsController < ApplicationController
  def index
  end

  def new
    @user = User.find(params[:user_id])
    @card = @user.cards.new
  end

  def create
    @user = User.find(params[:user_id])
    @card = @user.cards.create(card_params)    
    if @card.save && @user.cards.length == 0
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = "Could not create your card, please try again."
      render "new"
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @card = @user.cards.find(params[:id])
  end

  def update
    @card = User.find(params[:user_id]).cards.find(params[:id])
    if @card.update_attributes(card_params)
      redirect_to user_path(params[:user_id])
    else
      flash[:errors] = "Could not update Info"
      render :edit
    end
  end

  def destroy
    @card = User.find(params[:user_id]).cards.find(params[:id])
    if @card == User.find(params[:user_id]).cards[0]
      flash[:errors] = "You can't delete your own card!"
      redirect_to user_path(params[:user_id])
    else
      @card.destroy
      redirect_to user_path(params[:user_id])
    end
  end

  def show
    @card = User.find(params[:user_id]).cards.find(params[:id])
    # redirect_to user_card_path(@card)
  end

  private
  def card_params
    params.require(:card).permit(:name, :title, 
      :website, :phone, :email, :facebook, :twitter, :linkedin, :insta, :github,
      :company, :logo, :image)
  end
end
