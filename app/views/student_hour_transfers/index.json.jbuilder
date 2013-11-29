json.array!(@student_hour_transfers) do |student_hour_transfer|
  json.extract! student_hour_transfer, :hours_transferred, :employee_id
  json.url student_hour_transfer_url(student_hour_transfer, format: :json)
end
