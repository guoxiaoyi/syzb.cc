json.array!(@vips) do |vip|
  json.extract! vip, :name, :levels, :price, :parent_id
  json.url vip_url(vip, format: :json)
end