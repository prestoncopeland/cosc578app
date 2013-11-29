class CreateEmployeeContracts < ActiveRecord::Migration
  def change
    create_table :employee_contracts do |t|
      t.datetime :start_date
      t.datetime :contract_date
      t.references :employee, index: true
      t.decimal :pay_rate
      t.string :type

      t.timestamps
    end
  end
end
