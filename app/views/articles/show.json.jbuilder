json.extract! @article, :id, :title, :content, :author
json.updated_at @article.updated_at.to_s