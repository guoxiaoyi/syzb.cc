json.array!(@points_records) do |points_record|
  json.extract! points_record, :user_id, :points, :title, :brief
  json.url points_record_url(points_record, format: :json)
end