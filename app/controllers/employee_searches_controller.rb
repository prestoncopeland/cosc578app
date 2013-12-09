class EmployeeSearchesController < ApplicationController

  def index
  end

  def search_emp
  end

  def find_emp
    @employee = Employee.find_by_nickname(params[:nickname])
    if(@employee.nil?)
      redirect_to action: :index
    end
  end

  def search_active
  end

  def find_active
    @employees = Employee.where("is_active = ?", true)
  end

  def search_indiv_hours_worked
  end

  def find_indiv_hours_worked
    @employee = Employee.search_by_nickname(params[:nickname])
    if(@employee.nil?)
      redirect_to action: :index
    else
    start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
    end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)
    @sessions = Session.where("date >= ? AND date <= ? AND employee_id = ?", start_date, end_date, @employee.id).pluck(:date, :start_time, :end_time, :hours)
    @hours = Session.where("date >= ? AND date <= ? AND employee_id = ?", start_date, end_date, @employee.id).pluck(:hours)
    @total_hours = @hours.sum
    end
  end

  def employee_contracts
  end

end
