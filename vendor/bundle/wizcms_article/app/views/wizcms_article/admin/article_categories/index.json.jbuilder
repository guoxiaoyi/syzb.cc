json.array!(@article_categories) do |article_category|
  json.extract! article_category, :name, :custom_order, :parent_id, :brief, :published
  json.url article_category_url(article_category, format: :json)
end