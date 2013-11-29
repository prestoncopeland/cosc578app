json.array!(@resources) do |resource|
  json.extract! resource, :title, :subject, :pages, :publication_year, :purchase_date
  json.url resource_url(resource, format: :json)
end
