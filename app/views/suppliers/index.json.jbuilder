json.array!(@suppliers) do |supplier|
  json.extract! supplier, :name, :address, :email, :phone, :typical_supply, :contact_person
  json.url supplier_url(supplier, format: :json)
end
