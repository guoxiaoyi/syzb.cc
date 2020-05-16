json.extract! activity, :id, :title
json.created_at activity.created_at.to_s
json.picture activity.picture.url