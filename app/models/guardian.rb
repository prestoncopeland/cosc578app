class Guardian < ActiveRecord::Base
  has_many :students, through: :guardians_students
  has_many :guardians_students
end
