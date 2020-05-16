json.array!(@topics) do |topic|
  json.extract! topic, :node_id, :user_id, :title, :content
  json.url topic_url(topic, format: :json)
end