class ShoppingSessionsController < ApplicationController

  before_action :correct_user,   only: :destroy


  def create
    @shopping_session = current_user.shopping_sessions.build(shopping_session_params)
    if @shopping_session.save

      redirect_to current_user
    else
      render 'static_pages/home'
    end

  end

  def destroy
    @shopping_session.destroy
    redirect_to request.referrer || root_url
  end

  def show
    @shopping_session = ShoppingSession.find(params[:id])
    @listings = @shopping_session.listings
    @listing = Listing.new
    @market_products = MarketProduct.all


  end

  def index
    @shopping_session = ShoppingSession.paginate(page: params[:page])


  end






  private

  def shopping_session_params
    params.require(:shopping_session).permit(:name, :market_id )

  end



  def correct_user
    @shopping_session = current_user.shopping_sessions.find_by(id: params[:id])
    redirect_to current_user if @shopping_session.nil?
  end


end
