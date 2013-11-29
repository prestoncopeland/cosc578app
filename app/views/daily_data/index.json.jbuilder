json.array!(@daily_data) do |daily_datum|
  json.extract! daily_datum, :referral_source, :student_action, :notes, :employee_id, :student_id
  json.url daily_datum_url(daily_datum, format: :json)
end
