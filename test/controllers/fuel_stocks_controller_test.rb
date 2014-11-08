require 'test_helper'

class FuelStocksControllerTest < ActionController::TestCase
  setup do
    @fuel_stock = fuel_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuel_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuel_stock" do
    assert_difference('FuelStock.count') do
      post :create, fuel_stock: { closing_quantity: @fuel_stock.closing_quantity, date: @fuel_stock.date, opening_quantity: @fuel_stock.opening_quantity, tank_id: @fuel_stock.tank_id }
    end

    assert_redirected_to fuel_stock_path(assigns(:fuel_stock))
  end

  test "should show fuel_stock" do
    get :show, id: @fuel_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuel_stock
    assert_response :success
  end

  test "should update fuel_stock" do
    patch :update, id: @fuel_stock, fuel_stock: { closing_quantity: @fuel_stock.closing_quantity, date: @fuel_stock.date, opening_quantity: @fuel_stock.opening_quantity, tank_id: @fuel_stock.tank_id }
    assert_redirected_to fuel_stock_path(assigns(:fuel_stock))
  end

  test "should destroy fuel_stock" do
    assert_difference('FuelStock.count', -1) do
      delete :destroy, id: @fuel_stock
    end

    assert_redirected_to fuel_stocks_path
  end
end
