class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :type
      t.integer :quantity
      t.decimal :cost
      t.integer :budget_id
      t.integer :supplier_id

      t.timestamps
    end
  end
end
