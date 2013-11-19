class Student < ActiveRecord::Base
  has_many :books


  has_many :guardians, through: :guardians_students
  has_many :guardians_students

end
