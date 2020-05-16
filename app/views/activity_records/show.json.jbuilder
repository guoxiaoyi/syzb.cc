json.title @activity.title
json.location @activity.location
json.start_time @activity.start_time.strftime("%Y-%m-%d %H:%m")
json.content @activity.content
json.joined @joined.present?
json.status @joined.try(:status)