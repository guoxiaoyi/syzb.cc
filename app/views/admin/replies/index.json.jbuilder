json.array!(@replies) do |reply|
  json.extract! reply, :topic_id, :user_id, :content
  json.url reply_url(reply, format: :json)
end