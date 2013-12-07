class ChangeStartDateContractDateToDateInEmployeeContracts < ActiveRecord::Migration
  def change
    change_column :employee_contracts, :start_date, :date
    change_column :employee_contracts, :contract_date, :date
  end
end
