class MarketProductsController < ApplicationController
  before_action :set_market_product, only: [:show, :edit, :update, :destroy]

  # GET /market_products
  # GET /market_products.json
  def index
    @market_products = MarketProduct.all
  end

  # GET /market_products/1
  # GET /market_products/1.json
  def show
  end

  # GET /market_products/new
  def new
    @market_product = MarketProduct.new
  end

  # GET /market_products/1/edit
  def edit
  end

  # POST /market_products
  # POST /market_products.json
  def create
    @market_product = MarketProduct.new(market_product_params)


    respond_to do |format|
      if @market_product.save
        format.html { redirect_to @market_product, notice: 'Market product was successfully created.' }
        format.json { render :show, status: :created, location: @market_product }
      else
        format.html { render :new }
        format.json { render json: @market_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /market_products/1
  # PATCH/PUT /market_products/1.json
  def update
    respond_to do |format|
      if @market_product.update(market_product_params)
        format.html { redirect_to @market_product, notice: 'Market product was successfully updated.' }
        format.json { render :show, status: :ok, location: @market_product }
      else
        format.html { render :edit }
        format.json { render json: @market_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /market_products/1
  # DELETE /market_products/1.json
  def destroy
    @market_product.destroy
    respond_to do |format|
      format.html { redirect_to market_products_url, notice: 'Market product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market_product
      @market_product = MarketProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def market_product_params
      params.require(:market_product).permit(:price, :product_id, :market_id)
    end
end

