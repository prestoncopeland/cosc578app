class AddStudentIdToDailyData < ActiveRecord::Migration
  def change
    add_column :daily_data_payments, :student_id, :integer
  end
end
