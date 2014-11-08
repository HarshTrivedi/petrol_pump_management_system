require 'test_helper'

class FuelPricesControllerTest < ActionController::TestCase
  setup do
    @fuel_price = fuel_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuel_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuel_price" do
    assert_difference('FuelPrice.count') do
      post :create, fuel_price: { price: @fuel_price.price, type: @fuel_price.type }
    end

    assert_redirected_to fuel_price_path(assigns(:fuel_price))
  end

  test "should show fuel_price" do
    get :show, id: @fuel_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuel_price
    assert_response :success
  end

  test "should update fuel_price" do
    patch :update, id: @fuel_price, fuel_price: { price: @fuel_price.price, type: @fuel_price.type }
    assert_redirected_to fuel_price_path(assigns(:fuel_price))
  end

  test "should destroy fuel_price" do
    assert_difference('FuelPrice.count', -1) do
      delete :destroy, id: @fuel_price
    end

    assert_redirected_to fuel_prices_path
  end
end
