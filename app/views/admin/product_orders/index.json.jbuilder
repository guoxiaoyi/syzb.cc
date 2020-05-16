json.array!(@book_orders) do |book_order|
  json.extract! book_order, :code, :total_price, :pick_up_at, :pick_up_token, :status
  json.url book_order_url(book_order, format: :json)
end