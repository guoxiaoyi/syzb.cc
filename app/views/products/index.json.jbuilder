json.array! @product_categories do |product_category|
  json.name product_category.name
  json.products product_category.products.where(online: true).order(customize_order: :desc) do |product|
    json.id product.id
    json.name product.name
    json.stock product.stock
    json.thumbnail product.pictures.find_by(position: 0).try(:url).try(:url)
    json.pictures product.pictures.where(position: 1) do |picture|
      json.picture picture.try(:url).try(:url)
    end
    if product.categoryable.cite_key == 'j' || @user.discount.nil?
      json.price product.price
      json.discount BigDecimal.new(0)
    else
      json.price BigDecimal.new(product.price - @user.discount * product.price)
      json.discount BigDecimal.new(@user.discount * product.price)
    end
  end
end