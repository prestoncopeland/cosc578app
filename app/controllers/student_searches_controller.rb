class StudentSearchesController < ApplicationController

  def index
  end

  def remaining_hours
    @student = Student.search_by_nickname(params[:nickname])
    @contract = Contract.find_by_student_id(@student.id)
    @remaining_hours = @contract.remaining_hours
  end

end