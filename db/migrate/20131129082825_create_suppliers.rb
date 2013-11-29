class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.text :typical_supply
      t.string :contact_person

      t.timestamps
    end
  end
end
