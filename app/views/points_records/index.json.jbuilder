json.array!(@points_records) do |points_record|
  json.extract! points_record, :id, :title, :brief, :points, :balance
  json.created_at points_record.created_at.to_s
end