json.array!(@activities) do |activity|
  json.extract! activity, :title, :content, :customize_order, :start_time, :location, :description
  json.url activity_url(activity, format: :json)
end