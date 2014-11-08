require 'test_helper'

class TanksControllerTest < ActionController::TestCase
  setup do
    @tank = tanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tank" do
    assert_difference('Tank.count') do
      post :create, tank: { capacity: @tank.capacity, fuel_type: @tank.fuel_type, petrol_pump_station_id: @tank.petrol_pump_station_id }
    end

    assert_redirected_to tank_path(assigns(:tank))
  end

  test "should show tank" do
    get :show, id: @tank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tank
    assert_response :success
  end

  test "should update tank" do
    patch :update, id: @tank, tank: { capacity: @tank.capacity, fuel_type: @tank.fuel_type, petrol_pump_station_id: @tank.petrol_pump_station_id }
    assert_redirected_to tank_path(assigns(:tank))
  end

  test "should destroy tank" do
    assert_difference('Tank.count', -1) do
      delete :destroy, id: @tank
    end

    assert_redirected_to tanks_path
  end
end
