class AddReceiptNumberToSupplies < ActiveRecord::Migration
  def change
    add_column :supplies, :receipt_number, :string
  end
end
