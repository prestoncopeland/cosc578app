json.array!(@supplies) do |supply|
  json.extract! supply, :kind, :quantity, :cost, :budget_id, :supplier_id
  json.url supply_url(supply, format: :json)
end
