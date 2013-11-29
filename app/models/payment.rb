class Payment < ActiveRecord::Base
  belongs_to :paymentable, :polymorphic => true
end
