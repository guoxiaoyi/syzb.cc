json.array! @book_categories do |book_category|
  json.name book_category.name
  json.books book_category.books.where(online: true).order(customeize_order: :desc) do |book|
    json.id book.id
    json.name book.name
    json.stock book.stock
    json.price book.price
    json.thumbnail book.pictures.find_by(position: 0).try(:url).try(:url)
    json.pictures book.pictures.where(position: 1) do |picture|
      json.picture picture.try(:url).try(:url)
    end
    json.brief book.brief
  end
end