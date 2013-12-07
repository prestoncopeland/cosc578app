class DailyDataPaymentsController < ApplicationController
  before_action :set_daily_data_payment, only: [:show, :edit, :update, :destroy]

  # GET /daily_data_payments
  # GET /daily_data_payments.json
  def index
    @daily_data_payments = DailyDataPayment.all
  end

  # GET /daily_data_payments/1
  # GET /daily_data_payments/1.json
  def show
  end

  # GET /daily_data_payments/new
  def new
    @daily_data_payment = DailyDataPayment.new

  end

  # GET /daily_data_payments/1/edit
  def edit
  end

  # POST /daily_data_payments
  # POST /daily_data_payments.json
  def create
    @daily_data_payment = DailyDataPayment.new(daily_data_payment_params)

    respond_to do |format|
      if @daily_data_payment.save
        format.html { redirect_to @daily_data_payment, notice: 'Daily data payment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daily_data_payment }
      else
        format.html { render action: 'new' }
        format.json { render json: @daily_data_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_data_payments/1
  # PATCH/PUT /daily_data_payments/1.json
  def update
    respond_to do |format|
      if @daily_data_payment.update(daily_data_payment_params)
        format.html { redirect_to @daily_data_payment, notice: 'Daily data payment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daily_data_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data_payments/1
  # DELETE /daily_data_payments/1.json
  def destroy
    @daily_data_payment.destroy
    respond_to do |format|
      format.html { redirect_to daily_data_payments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_data_payment
      @daily_data_payment = DailyDataPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_data_payment_params
      params.require(:daily_data_payment).permit(:date, :daily_data_paymentable_type, :daily_data_paymentable_id, :amount, :payment_type, :partial_payment, :referral_source, :student_action, :notes, :rate, :hours)
    end
end
