class Book < ActiveRecord::Base
  belongs_to :student
  has_one :daily_data_payment, :as => :daily_data_paymentable
end
