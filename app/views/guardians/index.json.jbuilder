json.array!(@guardians) do |guardian|
  json.extract! guardian, :first_name, :last_name, :work_phone, :home_phone, :email, :profession
  json.url guardian_url(guardian, format: :json)
end
