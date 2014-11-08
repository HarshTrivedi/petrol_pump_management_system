require 'test_helper'

class PetrolPumpStationsControllerTest < ActionController::TestCase
  setup do
    @petrol_pump_station = petrol_pump_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:petrol_pump_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create petrol_pump_station" do
    assert_difference('PetrolPumpStation.count') do
      post :create, petrol_pump_station: { city: @petrol_pump_station.city, name: @petrol_pump_station.name, pincode: @petrol_pump_station.pincode, state: @petrol_pump_station.state, street_address: @petrol_pump_station.street_address }
    end

    assert_redirected_to petrol_pump_station_path(assigns(:petrol_pump_station))
  end

  test "should show petrol_pump_station" do
    get :show, id: @petrol_pump_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @petrol_pump_station
    assert_response :success
  end

  test "should update petrol_pump_station" do
    patch :update, id: @petrol_pump_station, petrol_pump_station: { city: @petrol_pump_station.city, name: @petrol_pump_station.name, pincode: @petrol_pump_station.pincode, state: @petrol_pump_station.state, street_address: @petrol_pump_station.street_address }
    assert_redirected_to petrol_pump_station_path(assigns(:petrol_pump_station))
  end

  test "should destroy petrol_pump_station" do
    assert_difference('PetrolPumpStation.count', -1) do
      delete :destroy, id: @petrol_pump_station
    end

    assert_redirected_to petrol_pump_stations_path
  end
end
