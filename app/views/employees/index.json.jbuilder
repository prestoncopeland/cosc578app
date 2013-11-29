json.array!(@employees) do |employee|
  json.extract! employee, :first_name, :middle_name, :last_name, :nickname, :birthdate, :ssn, :ethnicity, :interview_date, :street, :city, :state, :zip, :home_phone, :cell_phone, :email, :career_goals, :type
  json.url employee_url(employee, format: :json)
end
