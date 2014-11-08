class NonFuelTransactionsController < ApplicationController
  before_action :set_non_fuel_transaction, only: [:show, :edit, :update, :destroy]

  # GET /non_fuel_transactions
  # GET /non_fuel_transactions.json
  def index
    @non_fuel_transactions = NonFuelTransaction.all
  end

  # GET /non_fuel_transactions/1
  # GET /non_fuel_transactions/1.json
  def show
  end

  # GET /non_fuel_transactions/new
  def new
    @non_fuel_transaction = NonFuelTransaction.new
  end

  # GET /non_fuel_transactions/1/edit
  def edit
  end

  # POST /non_fuel_transactions
  # POST /non_fuel_transactions.json
  def create
    @non_fuel_transaction = NonFuelTransaction.new(non_fuel_transaction_params)

    respond_to do |format|
      if @non_fuel_transaction.save
        format.html { redirect_to @non_fuel_transaction, notice: 'Non fuel transaction was successfully created.' }
        format.json { render :show, status: :created, location: @non_fuel_transaction }
      else
        format.html { render :new }
        format.json { render json: @non_fuel_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /non_fuel_transactions/1
  # PATCH/PUT /non_fuel_transactions/1.json
  def update
    respond_to do |format|
      if @non_fuel_transaction.update(non_fuel_transaction_params)
        format.html { redirect_to @non_fuel_transaction, notice: 'Non fuel transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @non_fuel_transaction }
      else
        format.html { render :edit }
        format.json { render json: @non_fuel_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /non_fuel_transactions/1
  # DELETE /non_fuel_transactions/1.json
  def destroy
    @non_fuel_transaction.destroy
    respond_to do |format|
      format.html { redirect_to non_fuel_transactions_url, notice: 'Non fuel transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_fuel_transaction
      @non_fuel_transaction = NonFuelTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def non_fuel_transaction_params
      params.require(:non_fuel_transaction).permit(:transactions_id, :product_id)
    end
end
