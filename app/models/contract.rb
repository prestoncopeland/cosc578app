class Contract < ActiveRecord::Base
  belongs_to :student

  has_many :payments, :as => :paymentable

  has_many :guardians, through: :contracts_guardians
  has_many :contracts_guardians

end
