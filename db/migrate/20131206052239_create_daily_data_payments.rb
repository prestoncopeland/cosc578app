class CreateDailyDataPayments < ActiveRecord::Migration
  def change
    create_table :daily_data_payments do |t|
      t.date :date
      t.string :daily_data_paymentable_type
      t.integer :daily_data_paymentable_id
      t.decimal :amount
      t.string :payment_type
      t.boolean :partial_payment
      t.string :referral_source
      t.string :student_action
      t.text :notes
      t.decimal :rate
      t.decimal :hours

      t.timestamps
    end
  end
end
