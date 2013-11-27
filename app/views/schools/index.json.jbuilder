json.array!(@schools) do |school|
  json.extract! school, :name, :contact, :contact_phone
  json.url school_url(school, format: :json)
end
