class ChangeDateTimesToDateInContracts < ActiveRecord::Migration
  def change
    change_column :contracts, :date, :date
    change_column :contracts, :enrollment_date, :date
    change_column :contracts, :final_class_date, :date
    change_column :contracts, :final_interim_test, :date
    change_column :contracts, :dt_date, :date
    change_column :contracts, :dc_date, :date
  end
end
