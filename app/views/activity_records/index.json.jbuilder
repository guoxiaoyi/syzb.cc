json.array!(@activity_records) do |activity_record|
  json.extract! activity_record, :user_id, :activity_id
  json.url activity_record_url(activity_record, format: :json)
  json.title activity_record.activity.title
  json.created_at activity_record.created_at.to_s
end