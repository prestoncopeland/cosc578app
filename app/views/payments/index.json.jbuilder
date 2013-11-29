json.array!(@payments) do |payment|
  json.extract! payment, :amount, :partial_payment, :date, :type, :paymentable_id, :paymentable_type
  json.url payment_url(payment, format: :json)
end
