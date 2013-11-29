class StudentHourTransfer < ActiveRecord::Base
  belongs_to :employee
  belongs_to :student_from, class_name => 'Student'
  belongs_to :student_to, class_name => 'Student'
end
