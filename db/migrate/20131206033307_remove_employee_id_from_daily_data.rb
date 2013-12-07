class RemoveEmployeeIdFromDailyData < ActiveRecord::Migration
  def change
    remove_column :daily_data, :employee_id, :integer
  end
end
