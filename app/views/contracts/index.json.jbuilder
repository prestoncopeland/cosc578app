json.array!(@contracts) do |contract|
  json.extract! contract, :date, :enrollment_date, :final_class_date, :final_interim_test, :hours, :amount_paid, :paid_hours, :used_hours, :remaining_hours, :new_or_renew, :dt_date, :dc_date, :dt_amount, :est_class_schedule, :hrs_per_week, :chart_rate, :tuition, :dsc, :program_explanation, :total_money, :student_id
  json.url contract_url(contract, format: :json)
end
