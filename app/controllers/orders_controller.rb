class OrdersController < ApplicationController
  before_action :is_tourist, except: [:callback]
  def index
    if params[:type].blank?
    else
      @orders = current_user.orders.where(categoryable_type: params[:type]).order(created_at: :desc)
    end
  end

  def callback
    notify_result = Hash.from_xml(request.body.read)["xml"]
    Rails.logger.info notify_result

    if notify_result["result_code"] == 'SUCCESS'
      order = Order.find(params[:order_id])
      _points = order.categoryable.price - order.total_price
      order.user.points_records.new(
        points: "-#{_points}",
        balance: order.user.balance - _points,
        title: "购买#{order.categoryable.name}",
        brief: "购买#{order.categoryable.name}消费#{_points}德分"
      ).save
      order.categoryable.update(stock: order.categoryable.stock - 1 )
      order.update(status: 2)
      order.send_message_product
    end
    notify_result = {return_code: notify_result["result_code"]}
    render xml: notify_result.to_xml(root: "xml", :skip_instruct => true, dasherize: false)
  end
end
