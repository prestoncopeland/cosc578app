class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @hours_remaining = (@student.contract.remaining_hours>0)
  end

  # GET /students/new
  def new
    @student = Student.new
    @schools = School.pluck(:name, :id)
  end

  # GET /students/1/edit
  def edit
    @schools = School.pluck(:name, :id)
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        @schools_students = SchoolsStudent.new
        @schools_students.student_id = @student.id
        @schools_students.school_id = params[:school_id]
        @schools_students.save!

        @contract = Contract.new
        @contract.student_id = @student.id
        @contract.save!

        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render action: 'show', status: :created, location: @student }
      else
        format.html { render action: 'new' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  def search
  end

  def search_results
    @students = Student.search_by_full_name(params[:first], params[:last])
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:first_name, :middle_name, :last_name, :nickname, :birthdate, :grade, :ethnicity, :street, :city, :zip, :email, :phone, :is_active, :program_goals)
    end
end
