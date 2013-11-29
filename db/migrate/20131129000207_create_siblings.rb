class CreateSiblings < ActiveRecord::Migration
  def change
    create_table :siblings do |t|
      t.string :first_name
      t.string :last_name
      t.integer :grade

      t.timestamps
    end
  end
end
