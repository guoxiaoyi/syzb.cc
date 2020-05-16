json.array!(@vips) do |vip|
  json.extract! vip, :id, :name, :levels, :price, :parent_id, :content
  json.url vips_url(vip, format: :json)
end