class Student < ActiveRecord::Base

  def self.search_by_full_name(first, last)
    Student.where("first_name LIKE ? OR last_name LIKE ? OR first_name LIKE ? OR last_name LIKE ?", first, last, last, first)
  end

  has_many :books

  has_many :guardians, through: :guardians_students
  has_many :guardians_students

  has_many :schools, through: :schools_students
  has_many :schools_students

  has_many :siblings, through: :siblings_students
  has_many :siblings_students

  has_one :contract

  has_many :payments, through: :contracts

  has_many :daily_data

   has_many :student_hour_transfers_as_student_to, :class_name => 'StudentHourTransfer', :foreign_key => 'student_to_id'
  has_many :student_hour_transfers_as_student_from, :class_name => 'StudentHourTransfer', :foreign_key => 'student_from_id'
end
