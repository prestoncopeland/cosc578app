class Resource < ActiveRecord::Base
  has_one :daily_data_payment, as: :daily_data_paymentable
end
