json.array!(@principals) do |principal|
  json.extract! principal, :id, :email, :first_name, :last_name
  json.url principal_url(principal, format: :json)
end
