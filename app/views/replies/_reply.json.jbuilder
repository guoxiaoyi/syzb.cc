json.extract! reply, :id, :topic_id, :user_id, :content, :created_at
json.url node_topic_reply_path(node, topic, reply, format: :json)
json.user reply.user
json.updated_at reply.updated_at.to_s