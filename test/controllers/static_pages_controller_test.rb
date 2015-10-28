require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "CostControlApp"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "CostControlApp"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | CostControlApp"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | CostControlApp"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | CostControlApp"
  end
end