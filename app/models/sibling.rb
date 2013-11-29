class Sibling < ActiveRecord::Base
  has_many :guardians, through: :guardians_siblings
  has_many :guardians_siblings

  has_many :students, through: :siblings_students
  has_many :siblings_students
end
