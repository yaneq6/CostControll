require 'test_helper'

class MarketProductsControllerTest < ActionController::TestCase
  setup do
    @market_product = market_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:market_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create market_product" do
    assert_difference('MarketProduct.count') do
      post :create, market_product: { price: @market_product.price }
    end

    assert_redirected_to market_product_path(assigns(:market_product))
  end

  test "should show market_product" do
    get :show, id: @market_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @market_product
    assert_response :success
  end

  test "should update market_product" do
    patch :update, id: @market_product, market_product: { price: @market_product.price }
    assert_redirected_to market_product_path(assigns(:market_product))
  end

  test "should destroy market_product" do
    assert_difference('MarketProduct.count', -1) do
      delete :destroy, id: @market_product
    end

    assert_redirected_to market_products_path
  end
end
