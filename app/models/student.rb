class Student < ActiveRecord::Base
  has_many :books


  has_many :guardians, through: :guardians_students
  has_many :guardians_students

  has_many :schools, through: :schools_students
  has_many :schools_students

  has_many :siblings, through: :siblings_students
  has_many :siblings_students

  has_many :contracts

  has_many :payments, through: :contracts

end
