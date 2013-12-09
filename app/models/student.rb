class Student < ActiveRecord::Base
  before_save :default_values

  def default_values
    self.first_name ||= ""
    self.middle_name ||= ""
    self.last_name ||= ""
    self.nickname ||= ""
    self.birthdate ||= Date.today
    self.grade ||= ""
    self.ethnicity ||= ""
    self.street ||= ""
    self.city ||= ""
    self.zip ||= 0
    self.email ||= ""
    self.phone ||= ""
    self.is_active = true if self.is_active.nil?
    self.program_goals ||= ""
  end

  def self.search_by_full_name(first, last)
    Student.where("first_name LIKE ? OR last_name LIKE ? OR first_name LIKE ? OR last_name LIKE ?", first.downcase, last.downcase, last.downcase, first.downcase)
  end

  def self.search_by_nickname(nickname)
    Student.where("nickname LIKE ?", nickname.downcase).first
  end

  def hours_remaining?
    return(self.contract.remaining_hours > 0)
  end

  def hours_used
    return(self.contract.used_hours)
  end

  has_many :books

  has_many :guardians, through: :guardians_students
  has_many :guardians_students

  has_many :schools, through: :schools_students
  has_many :schools_students, dependent: :destroy

  has_many :siblings, through: :siblings_students
  has_many :siblings_students, dependent: :destroy

  has_one :contract, dependent: :destroy

  has_many :daily_data_payments


   has_many :student_hour_transfers_as_student_to, :class_name => 'StudentHourTransfer', :foreign_key => 'student_to_id'
  has_many :student_hour_transfers_as_student_from, :class_name => 'StudentHourTransfer', :foreign_key => 'student_from_id'
end
