class AddReceiptNumberToBooks < ActiveRecord::Migration
  def change
    add_column :books, :receipt_number, :string
  end
end
