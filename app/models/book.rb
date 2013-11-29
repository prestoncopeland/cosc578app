class Book < ActiveRecord::Base
  belongs_to :student
  has_one :payment, :as => :paymentable
end
