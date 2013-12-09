class School < ActiveRecord::Base
  has_many :students, through: :schools_students
  has_many :schools_students, dependent: :destroy

end
