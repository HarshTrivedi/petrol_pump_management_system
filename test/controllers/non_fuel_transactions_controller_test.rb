require 'test_helper'

class NonFuelTransactionsControllerTest < ActionController::TestCase
  setup do
    @non_fuel_transaction = non_fuel_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:non_fuel_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create non_fuel_transaction" do
    assert_difference('NonFuelTransaction.count') do
      post :create, non_fuel_transaction: { product_id: @non_fuel_transaction.product_id, transactions_id: @non_fuel_transaction.transactions_id }
    end

    assert_redirected_to non_fuel_transaction_path(assigns(:non_fuel_transaction))
  end

  test "should show non_fuel_transaction" do
    get :show, id: @non_fuel_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @non_fuel_transaction
    assert_response :success
  end

  test "should update non_fuel_transaction" do
    patch :update, id: @non_fuel_transaction, non_fuel_transaction: { product_id: @non_fuel_transaction.product_id, transactions_id: @non_fuel_transaction.transactions_id }
    assert_redirected_to non_fuel_transaction_path(assigns(:non_fuel_transaction))
  end

  test "should destroy non_fuel_transaction" do
    assert_difference('NonFuelTransaction.count', -1) do
      delete :destroy, id: @non_fuel_transaction
    end

    assert_redirected_to non_fuel_transactions_path
  end
end
