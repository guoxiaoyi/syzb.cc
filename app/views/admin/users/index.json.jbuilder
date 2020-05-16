json.array!(@users) do |user|
  json.extract! user, :manager_id
  json.url user_url(user, format: :json)
end