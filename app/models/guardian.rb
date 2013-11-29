class Guardian < ActiveRecord::Base
  has_many :students, through: :guardians_students
  has_many :guardians_students

  has_many :siblings, through: :guardians_siblings
  has_many :guardians_siblings

  has_many :contracts, through: :contracts_guardians
  has_many :contracts_guardians

  has_many :payments, through: :contracts

  has_many :meeting_participants
end
