class StudentSearchesController < ApplicationController

  def index
  end

  def student_contracts
  end

  def student_relatives
  end

  def find_siblings
    @student = Student.search_by_nickname(params[:nickname])
    if(@student.nil?)
      redirect_to action: :index
    else
    @siblings = @student.siblings
    end
  end

  def find_guardians
    @student = Student.search_by_nickname(params[:nickname])
    if(@student.nil?)
      redirect_to action: :index
    else
    @guardians = @student.guardians
    end
  end

  def remaining_hours
    @student = Student.search_by_nickname(params[:nickname])
    if(@student.nil?)
      redirect_to action: :index
    else
    @contract = Contract.find_by_student_id(@student.id)
    @remaining_hours = @contract.remaining_hours
    end
  end

  def used_hours_over_time_period
    @student = Student.search_by_nickname(params[:nickname])
    if(@student.nil?)
      redirect_to action: :index
    else
    start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    @session_hours = Session.where("date >= ? AND date <= ?", start_date, end_date).pluck(:hours)
    @used_hours = @session_hours.sum
    end
  end

  def student_payments
    @student = Student.search_by_nickname(params[:nickname])
    if(@student.nil?)
      redirect_to action: :index
    else
    @payments_data = @student.daily_data_payments.pluck(:date, :amount, :hours)
    @payments = @student.daily_data_payments.pluck(:amount)
    @total = @payments.sum
    end
  end

  def group_hours
    @students = Array.new
    @students << (@student1 = Student.search_by_nickname(params[:nickname1]) if params.has_key?(:nickname1))
    @students << (@student2 = Student.search_by_nickname(params[:nickname2]) if params.has_key?(:nickname2))
    @students << (@student3 = Student.search_by_nickname(params[:nickname3]) if params.has_key?(:nickname3))
    @students << (@student4 = Student.search_by_nickname(params[:nickname4]) if params.has_key?(:nickname4))
    @students << (@student5 = Student.search_by_nickname(params[:nickname5]) if params.has_key?(:nickname5))
  end



end