class RemoveEmployeeIdFromStudentHourTransfers < ActiveRecord::Migration
  def change
     remove_column :student_hour_transfers, :employee_id, :integer
  end
end
