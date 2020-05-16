json.extract! @note, :title, :content, :recommendation, :price, :created_at, :updated_at
json.created_at @note.created_at.to_s