class ChangeColumnsForEmployees < ActiveRecord::Migration
  def change
    change_column :employees, :birthdate, :date
    change_column :employees, :interview_date, :date
  end
end
