class StudentHourTransfer < ActiveRecord::Base

  belongs_to :student_from, :class_name => 'Student'
  belongs_to :student_to, :class_name => 'Student'

  def update_contracts(student_to_id, student_from_id, hours)

    student_to = Student.find(student_to_id)
    student_from = Student.find(student_from_id)
    contract_to = Contract.find_by_student_id(student_to.id)
    contract_from = Contract.find_by_student_id(student_from.id)
    contract_to.remaining_hours = contract_to.remaining_hours + hours
    contract_from.remaining_hours = contract_from.remaining_hours - hours
    contract_from.used_hours = contract_from.used_hours + hours
    contract_to.save!
    contract_from.save!

  end

end

#this is correct :class_name =>
#use that!!!
