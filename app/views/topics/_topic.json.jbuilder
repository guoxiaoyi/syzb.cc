json.extract! topic, :id, :title, :created_at, :content
json.updated_at topic.updated_at.strftime("%Y-%m-%d")
json.number topic.replies.count
json.url node_topics_path(topic, format: :json)
