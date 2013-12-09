class GuardiansController < ApplicationController
  before_action :set_guardian, only: [:show, :edit, :update, :destroy]

  # GET /guardians
  # GET /guardians.json
  def index
    @guardians = Guardian.all
  end

  # GET /guardians/1
  # GET /guardians/1.json
  def show
  end

  # GET /guardians/new
  def new
    @guardian = Guardian.new
    @students = Student.pluck(:nickname, :id)
  end

  # GET /guardians/1/edit
  def edit
    @students = Student.pluck(:nickname, :id)
  end

  # POST /guardians
  # POST /guardians.json
  def create
    @guardian = Guardian.new(guardian_params)

    respond_to do |format|
      if @guardian.save
        @guardians_students = GuardiansStudent.new
        @guardians_students.guardian_id = @guardian.id
        @guardians_students.student_id = params[:student_id]
        @guardians_students.save!
        format.html { redirect_to @guardian, notice: 'Guardian was successfully created.' }
        format.json { render action: 'show', status: :created, location: @guardian }
      else
        format.html { render action: 'new' }
        format.json { render json: @guardian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guardians/1
  # PATCH/PUT /guardians/1.json
  def update
    respond_to do |format|
      if @guardian.update(guardian_params)
        format.html { redirect_to @guardian, notice: 'Guardian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @guardian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guardians/1
  # DELETE /guardians/1.json
  def destroy
    @guardian.destroy
    respond_to do |format|
      format.html { redirect_to guardians_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guardian
      @guardian = Guardian.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guardian_params
      params.require(:guardian).permit(:first_name, :last_name, :work_phone, :home_phone, :email, :profession)
    end
end
