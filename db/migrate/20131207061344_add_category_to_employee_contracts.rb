class AddCategoryToEmployeeContracts < ActiveRecord::Migration
  def change
    add_column :employee_contracts, :category, :string
  end
end
