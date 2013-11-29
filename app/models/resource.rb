class Resource < ActiveRecord::Base
  has_one :payment, as: :paymentable
end
