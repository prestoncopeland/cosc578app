class StudentHourTransfersController < ApplicationController
  before_action :set_student_hour_transfer, only: [:show, :edit, :update, :destroy]

  # GET /student_hour_transfers
  # GET /student_hour_transfers.json
  def index
    @student_hour_transfers = StudentHourTransfer.all
  end

  # GET /student_hour_transfers/1
  # GET /student_hour_transfers/1.json
  def show
  end

  # GET /student_hour_transfers/new
  def new
    @student_hour_transfer = StudentHourTransfer.new
    @students_from = Student.pluck(:nickname, :id)
    @students_to = Student.pluck(:nickname, :id)
  end

  # GET /student_hour_transfers/1/edit
  def edit
  end

  # POST /student_hour_transfers
  # POST /student_hour_transfers.json
  def create
    @student_hour_transfer = StudentHourTransfer.new(:student_from_id => params[:student_from_id], :student_to_id => params[:student_to_id], :hours_transferred => params[:student_hour_transfer][:hours_transferred])
    @student_hour_transfer.update_contracts(params[:student_to_id], params[:student_from_id], params[:student_hour_transfer][:hours_transferred].to_i)
    respond_to do |format|
      if @student_hour_transfer.save


        format.html { redirect_to @student_hour_transfer, notice: 'Student hour transfer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student_hour_transfer }
      else
        format.html { render action: 'new' }
        format.json { render json: @student_hour_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_hour_transfers/1
  # PATCH/PUT /student_hour_transfers/1.json
  def update
    respond_to do |format|
      if @student_hour_transfer.update(student_hour_transfer_params)
        format.html { redirect_to @student_hour_transfer, notice: 'Student hour transfer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student_hour_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_hour_transfers/1
  # DELETE /student_hour_transfers/1.json
  def destroy
    @student_hour_transfer.destroy
    respond_to do |format|
      format.html { redirect_to student_hour_transfers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_hour_transfer
      @student_hour_transfer = StudentHourTransfer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_hour_transfer_params
      params.require(:student_hour_transfer).permit(:hours_transferred, :student_from_id, :student_to_id)
    end
end
