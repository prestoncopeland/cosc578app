class FixColumnsInPayments < ActiveRecord::Migration
  def change
    change_column :payments, :date, :date
    rename_column :payments, :type, :payment_type
  end
end
