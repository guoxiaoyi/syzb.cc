json.array!(@books) do |book|
  json.extract! book, :name, :manager_id, :categoryable_id, :detail, :online, :customeize_order
  json.url book_url(book, format: :json)
end