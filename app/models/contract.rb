class Contract < ActiveRecord::Base
  belongs_to :student

  has_many :daily_data_payments, through: :students

  has_many :guardians, through: :contracts_guardians
  has_many :contracts_guardians


end
