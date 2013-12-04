json.array!(@payments) do |payment|
  json.extract! payment, :amount, :partial_payment, :date, :payment_type, :paymentable_id, :paymentable_type
  json.url payment_url(payment, format: :json)
end
