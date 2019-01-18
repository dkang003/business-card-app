class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def search 
    search_term = params[:search].downcase
    @cards = Card.where("lower(name) LIKE ?", "%#{search_term}%").or(Card.where("lower(email) LIKE?", "%#{search_term}%"))
    # binding.pry
  end

  def add
    @card = Card.find(params[:id])
    @user = User.find(current_user.id)
    # binding.pry
    @user.cards << @card
    redirect_to user_path(@user)
  end

  # def remove
    # binding.pry
    # @card = Card.find_by(params[:id])
    # @user = User.find(params[:user_id])
    # @user.cards.delete(@card)
  # end

  def new
    @user = User.find(current_user.id)
    @card = @user.cards.new
  end

  def create
    @user = User.find(current_user.id)
    @card = @user.cards.new(card_params)    
    @card.user_id = @user.id
    if @card.save
      # @user.card_id = @card.id

      redirect_to user_path(@user)
    else
      flash[:errors] = "Could not create your card, please try again."
      render "new"
    end
  end

  def edit
    @card = Card.find_by(user_id: params[:id])
  end

  def update
    @card = Card.find_by(user_id: params[:id])
    if @card.update_attributes(card_params)
      redirect_to user_path(current_user)
    else
      flash[:errors] = "Could not update Info"
      render :edit
    end
  end

  def destroy
    @card = current_user.cards.find_by(user_id: params[:id])

    if @card.user_id == current_user.id
      flash[:errors] = "You can't delete your own card!"
      redirect_to user_path(params[:user_id])
    else
      current_user.cards.delete(@card)
      redirect_to user_path(current_user)
    end
  end

  def show
  end

  private
  def card_params
    params.require(:card).permit(:name, :title, 
      :website, :phone, :email, :facebook, :twitter, :linkedin, :insta, :github,
      :company, :logo, :image, :user_id)
  end
end
