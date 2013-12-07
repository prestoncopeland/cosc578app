class StudentSearchesController < ApplicationController

  def index
  end

  def remaining_hours
    @student = Student.search_by_nickname(params[:nickname])
    @contract = Contract.find_by_student_id(@student.id)
    @remaining_hours = @contract.remaining_hours
  end

  def used_hours_over_time_period
    @student = Student.search_by_nickname(params[:nickname])
    start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    @session_hours = Session.where("date >= ? AND date <= ?", start_date, end_date).pluck(:hours)
    @used_hours = @session_hours.sum
  end

  def student_payments
    @student = Student.search_by_nickname(params[:nickname])
    @payments_data = @student.contract.daily_data_payments.pluck(:date, :amount, :hours)
    @payments = @student.contract.daily_data_payments.pluck(:amount)
    @total = @payments.sum
  end



end