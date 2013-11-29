class DailyDataController < ApplicationController
  before_action :set_daily_datum, only: [:show, :edit, :update, :destroy]

  # GET /daily_data
  # GET /daily_data.json
  def index
    @daily_data = DailyDatum.all
  end

  # GET /daily_data/1
  # GET /daily_data/1.json
  def show
  end

  # GET /daily_data/new
  def new
    @daily_datum = DailyDatum.new
  end

  # GET /daily_data/1/edit
  def edit
  end

  # POST /daily_data
  # POST /daily_data.json
  def create
    @daily_datum = DailyDatum.new(daily_datum_params)

    respond_to do |format|
      if @daily_datum.save
        format.html { redirect_to @daily_datum, notice: 'Daily datum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @daily_datum }
      else
        format.html { render action: 'new' }
        format.json { render json: @daily_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_data/1
  # PATCH/PUT /daily_data/1.json
  def update
    respond_to do |format|
      if @daily_datum.update(daily_datum_params)
        format.html { redirect_to @daily_datum, notice: 'Daily datum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @daily_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_data/1
  # DELETE /daily_data/1.json
  def destroy
    @daily_datum.destroy
    respond_to do |format|
      format.html { redirect_to daily_data_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_datum
      @daily_datum = DailyDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def daily_datum_params
      params.require(:daily_datum).permit(:referral_source, :student_action, :notes, :employee_id, :student_id)
    end
end
