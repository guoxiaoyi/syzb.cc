json.array!(@donates) do |donate|
  json.extract! donate, :content, :user_id, :manager_id
  json.url donate_url(donate, format: :json)
end