json.array!(@files) do |file|
  json.extract! file, 
  json.url file_url(file, format: :json)
end