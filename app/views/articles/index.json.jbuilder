json.array! @articles.where.not(published: false).order(customeize_order: :desc, created_at: :desc) do |article|
  json.extract! article, :id, :title, :content, :author
  json.picture article.picture.url
  json.created_at article.created_at.to_s
end
# json.updated_at @article.updated_at.to_s