json.array!(@sessions) do |session|
  json.extract! session, :hours, :date, :student_id, :tutor_id
  json.url session_url(session, format: :json)
end
