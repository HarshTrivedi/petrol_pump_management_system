require 'test_helper'

class FuelTransactionsControllerTest < ActionController::TestCase
  setup do
    @fuel_transaction = fuel_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fuel_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fuel_transaction" do
    assert_difference('FuelTransaction.count') do
      post :create, fuel_transaction: { machine_id: @fuel_transaction.machine_id, quantity: @fuel_transaction.quantity, transactions_id: @fuel_transaction.transactions_id }
    end

    assert_redirected_to fuel_transaction_path(assigns(:fuel_transaction))
  end

  test "should show fuel_transaction" do
    get :show, id: @fuel_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fuel_transaction
    assert_response :success
  end

  test "should update fuel_transaction" do
    patch :update, id: @fuel_transaction, fuel_transaction: { machine_id: @fuel_transaction.machine_id, quantity: @fuel_transaction.quantity, transactions_id: @fuel_transaction.transactions_id }
    assert_redirected_to fuel_transaction_path(assigns(:fuel_transaction))
  end

  test "should destroy fuel_transaction" do
    assert_difference('FuelTransaction.count', -1) do
      delete :destroy, id: @fuel_transaction
    end

    assert_redirected_to fuel_transactions_path
  end
end
