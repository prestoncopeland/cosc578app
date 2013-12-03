json.array!(@students) do |student|
  json.extract! student, :first_name, :middle_name, :last_name, :nickname, :birthdate, :grade, :ethnicity, :street, :city, :zip, :email, :phone, :is_active, :program_goals
  json.url student_url(student, format: :json)
end
