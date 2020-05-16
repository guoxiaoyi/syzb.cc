json.array!(@item_categories) do |item_category|
  json.extract! item_category, :name, :cite_key, :parent_id
  json.url item_category_url(item_category, format: :json)
end