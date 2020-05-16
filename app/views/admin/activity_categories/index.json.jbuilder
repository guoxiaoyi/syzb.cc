json.array!(@activity_categories) do |activity_category|
  json.extract! activity_category, :name, :custom_order, :parent_id, :brief, :published, :cite_key
  json.url activity_category_url(activity_category, format: :json)
end