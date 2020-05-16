json.array!(@managers) do |manager|
  json.extract! manager, :name, :email, :passowrd_digest, :supper, :disabled
  json.url manager_url(manager, format: :json)
end