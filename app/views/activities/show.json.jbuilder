json.extract! @activity, :title, :content, :location
json.start_time @activity.updated_at.strftime("%Y-%m-%d %H:%m")
json.status @status