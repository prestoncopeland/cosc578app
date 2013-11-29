json.array!(@siblings) do |sibling|
  json.extract! sibling, :first_name, :last_name, :grade
  json.url sibling_url(sibling, format: :json)
end
