class DailyDataPayment < ActiveRecord::Base
  belongs_to :daily_data_paymentable, :polymorphic => true
end
