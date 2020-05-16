json.array! @orders do |order|
  json.code order.code
  json.price order.total_price
  json.item order.categoryable
  json.status order.status_i18n
  json.pick_up_at order.pick_up_at.to_s
  json.thumbnail order.categoryable.pictures.find_by(position: 0).try(:url)
  json.created_at order.created_at.to_s
end