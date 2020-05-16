json.array!(@products) do |product|
  json.extract! product, :name, :price, :detail, :online, :customize_order, :recommendation
  json.url product_url(product, format: :json)
end