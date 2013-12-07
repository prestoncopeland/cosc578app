class RemoveTypeFromEmployeeContracts < ActiveRecord::Migration
  def change
    remove_column :employee_contracts, :type, :string
  end
end
