class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.boolean :partial_payment
      t.datetime :date
      t.string :type
      t.integer :paymentable_id
      t.string :paymentable_type

      t.timestamps
    end
  end
end
