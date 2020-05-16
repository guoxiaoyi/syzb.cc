json.extract! donate, :id, :content
json.day donate.created_at.strftime("%d")
json.month donate.created_at.strftime("%m")
json.created_at donate.created_at.to_s
json.pictures donate.pictures do |picture|
  json.path picture.url.url
end
json.url donate_url(donate, format: :json)
