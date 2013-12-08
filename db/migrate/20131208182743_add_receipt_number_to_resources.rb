class AddReceiptNumberToResources < ActiveRecord::Migration
  def change
    add_column :resources, :receipt_number, :string
  end
end
