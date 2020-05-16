json.partial! "topics/topic", topic: @topic
json.replies @replies do |reply|
  json.user reply.user
  json.content reply.content
  json.updated_at reply.updated_at.to_s
end