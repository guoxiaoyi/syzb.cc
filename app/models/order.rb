# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  code              :string(255)
#  total_price       :decimal(10, 2)
#  pick_up_at        :datetime
#  pick_up_token     :string(255)
#  pick_up_ed        :datetime
#  user_id           :integer
#  manager_id        :integer
#  status            :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_orders_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :categoryable, polymorphic: true
  after_create :generate_code

  enum status: { "nopayment" => 1, "paid" => 2, "finished" => 3 }

  def generate_code
    self.update(code: "#{Time.now.to_i}#{"%04d"%self.id}", status: 1)
  end

  # 图书到期提醒
  def send_message_expired
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{user.openid}",
      "template_id" => "JWU07RMiITvC2IOr0xBNZ8ZwoK2bwLWyoToIYS4hTV0",
      "data" => {
          "date1" => {"value" => "#{self.pick_up_at.to_s(:date)}"},
          "date2" => {"value" => "#{self.pick_up_ed.to_s(:date)}"},
          "thing3" => {"value" => "#{self.categoryable.name}"},
          "thing4" => {"value" => "#{((self.pick_up_ed.to_date - Date.today).days/1.days).round}天"},
        }
      }.to_json
    )
  end

  # 图书借阅申请通知
  def send_message_book
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{user.openid}",
      "template_id" => "yUQMIadc1z9DvEjAu2J8ZuFOJsxVt6-Ov3DKcVS6kd8",
      "page" => "/pages/order/index?type=Book",
      "data" => {
          "name1" => {"value" => "#{self.user.name}"},
          "thing2" => {"value" => "#{self.categoryable.name}"},
          "thing7" => {"value" => "预约成功,快去取书吧"},
        }
      }.to_json
    )
  end

  # 订单支付成功通知
  def send_message_product
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{user.openid}",
      "template_id" => "IQVr9RQUgdHNyDfSGYqoxOBp4k6iSFv_5pnQOWvVbFc",
      "page" => "/pages/order/index?type=Product",
      "data" => {
          "number1" => {"value" => "#{self.code}"},
          "thing2" => {"value" => "#{self.categoryable.name}"},
          "amount3" => {"value" => "#{self.total_price}"},
          "date5" => {"value" => "#{created_at.to_s(:wechat_time)}"},
        }
      }.to_json
    )
  end
end
