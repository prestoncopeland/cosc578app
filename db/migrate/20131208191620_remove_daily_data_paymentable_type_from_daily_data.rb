class RemoveDailyDataPaymentableTypeFromDailyData < ActiveRecord::Migration
  def change
    remove_column :daily_data_payments, :daily_data_paymentable_type, :string
  end
end
