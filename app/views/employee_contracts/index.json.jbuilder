json.array!(@employee_contracts) do |employee_contract|
  json.extract! employee_contract, :start_date, :contract_date, :employee_id, :pay_rate, :type
  json.url employee_contract_url(employee_contract, format: :json)
end
