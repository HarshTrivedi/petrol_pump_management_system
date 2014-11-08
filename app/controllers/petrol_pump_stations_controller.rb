class PetrolPumpStationsController < ApplicationController
  before_action :set_petrol_pump_station, only: [:show, :edit, :update, :destroy]

  # GET /petrol_pump_stations
  # GET /petrol_pump_stations.json
  def index
    @petrol_pump_stations = PetrolPumpStation.all
  end

  # GET /petrol_pump_stations/1
  # GET /petrol_pump_stations/1.json
  def show
  end

  # GET /petrol_pump_stations/new
  def new
    @petrol_pump_station = PetrolPumpStation.new
  end

  # GET /petrol_pump_stations/1/edit
  def edit
  end

  # POST /petrol_pump_stations
  # POST /petrol_pump_stations.json
  def create
    @petrol_pump_station = PetrolPumpStation.new(petrol_pump_station_params)

    respond_to do |format|
      if @petrol_pump_station.save
        format.html { redirect_to @petrol_pump_station, notice: 'Petrol pump station was successfully created.' }
        format.json { render :show, status: :created, location: @petrol_pump_station }
      else
        format.html { render :new }
        format.json { render json: @petrol_pump_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /petrol_pump_stations/1
  # PATCH/PUT /petrol_pump_stations/1.json
  def update
    respond_to do |format|
      if @petrol_pump_station.update(petrol_pump_station_params)
        format.html { redirect_to @petrol_pump_station, notice: 'Petrol pump station was successfully updated.' }
        format.json { render :show, status: :ok, location: @petrol_pump_station }
      else
        format.html { render :edit }
        format.json { render json: @petrol_pump_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /petrol_pump_stations/1
  # DELETE /petrol_pump_stations/1.json
  def destroy
    @petrol_pump_station.destroy
    respond_to do |format|
      format.html { redirect_to petrol_pump_stations_url, notice: 'Petrol pump station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_petrol_pump_station
      @petrol_pump_station = PetrolPumpStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def petrol_pump_station_params
      params.require(:petrol_pump_station).permit(:name, :city, :state, :street_address, :pincode)
    end
end
