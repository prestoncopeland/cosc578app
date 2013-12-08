class AddEmployeeIdToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :employee_id, :integer
  end
end
