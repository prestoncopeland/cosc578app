class Payment < ActiveRecord::Base
  belongs_to :paymentable, :polymorphic => true
  has_one :daily_datum
end
