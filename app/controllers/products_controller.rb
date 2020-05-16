class ProductsController < ApplicationController
  before_action :is_tourist, except: [:index, :show]
  def index
    @user = current_user
    @user = User.new(levels: 1, manager_id: Manager.first.id) unless current_user
    @product_categories = @user.manager.item_categories.find_by(cite_key: 'product').children
  end

  def show
    @product = Product.find(params[:id])
  end

  def pick_up
    @product = Product.find(params[:product_id])

    return render json: {success: false, msg: '库存不足'} unless @product.stock > 0

    if @product.categoryable.cite_key == 'j'
      _price = @product.price
      _discount = 0
    else
      _price = BigDecimal.new(@product.price - current_user.discount * @product.price)
      _discount = BigDecimal.new(current_user.discount * @product.price)
    end

    if current_user.balance - _discount < 0
      _price = @product.price - current_user.balance
    end

    @order = @product.orders.new(
      pick_up_at: params[:pick_up_at],
      pick_up_token: params[:pick_up_token],
      user_id: current_user.id,
      total_price: _price )
    if @order.save
      options = {
        appid: 'wx3d44729118c26f7b',
        mch_id: '1513160121',
        nonce_str: SecureRandom.hex(16),
        body: @product.name,
        out_trade_no: @order.code,
        total_fee: (_price * 100).to_i,
        spbill_create_ip: '39.105.183.8',
        notify_url: "https://api.lxdsh.com/orders/#{@order.id}/callback",
        trade_type: 'JSAPI',
        openid: current_user.openid
      }
      wx = WechatPay::CreateOrder.new(options).unifiedorder
      render json: wx.merge(id: @order.id)
    else
      render json: {success: false}
    end
  end
end

