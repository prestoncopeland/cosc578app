class Applicant < Employee
  def self.model_name
    Employee.model_name
  end
end