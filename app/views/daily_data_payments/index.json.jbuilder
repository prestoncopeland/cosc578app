json.array!(@daily_data_payments) do |daily_data_payment|
  json.extract! daily_data_payment, :id, :date, :daily_data_paymentable_type, :daily_data_paymentable_id, :amount, :payment_type, :partial_payment, :referral_source, :student_action, :notes, :rate, :hours
  json.url daily_data_payment_url(daily_data_payment, format: :json)
end
