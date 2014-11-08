class FuelStocksController < ApplicationController
  before_action :set_fuel_stock, only: [:show, :edit, :update, :destroy]

  # GET /fuel_stocks
  # GET /fuel_stocks.json
  def index
    @fuel_stocks = FuelStock.all
  end

  # GET /fuel_stocks/1
  # GET /fuel_stocks/1.json
  def show
  end

  # GET /fuel_stocks/new
  def new
    @fuel_stock = FuelStock.new
  end

  # GET /fuel_stocks/1/edit
  def edit
  end

  # POST /fuel_stocks
  # POST /fuel_stocks.json
  def create
    @fuel_stock = FuelStock.new(fuel_stock_params)

    respond_to do |format|
      if @fuel_stock.save
        format.html { redirect_to @fuel_stock, notice: 'Fuel stock was successfully created.' }
        format.json { render :show, status: :created, location: @fuel_stock }
      else
        format.html { render :new }
        format.json { render json: @fuel_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fuel_stocks/1
  # PATCH/PUT /fuel_stocks/1.json
  def update
    respond_to do |format|
      if @fuel_stock.update(fuel_stock_params)
        format.html { redirect_to @fuel_stock, notice: 'Fuel stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuel_stock }
      else
        format.html { render :edit }
        format.json { render json: @fuel_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_stocks/1
  # DELETE /fuel_stocks/1.json
  def destroy
    @fuel_stock.destroy
    respond_to do |format|
      format.html { redirect_to fuel_stocks_url, notice: 'Fuel stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuel_stock
      @fuel_stock = FuelStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuel_stock_params
      params.require(:fuel_stock).permit(:tank_id, :date, :opening_quantity, :closing_quantity)
    end
end
