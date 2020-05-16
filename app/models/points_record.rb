# == Schema Information
#
# Table name: points_records
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  points     :decimal(10, 2)
#  balance    :decimal(10, 2)
#  title      :string(255)
#  brief      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PointsRecord < ActiveRecord::Base
  belongs_to :user
  after_save :update_user_balance
  validates :points, :title, :brief, presence: true


  def update_user_balance
    balance = user.points_records.sum(:points)
    self.user.update(balance: balance)
    send_message
    # vip = user.next_levels
    # if vip
    #   buy_vip_after_balance = user.reload.balance - vip["price"]
    #   if buy_vip_after_balance >= 0
    #     user.update(levels: vip['levels'], expired_at: Time.now+1.years)
    #     user.points_records.new(points: "-#{vip["price"]}", balance: buy_vip_after_balance, title: "购买#{vip["name"]}", brief: "购买#{vip["name"]}花费#{vip["price"]}德分").save
    #   end
    # end
  end

  # 账户积分变动提醒
  def send_message
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{user.openid}",
      "template_id" => "ZubLR5voknHYzd6dUlzDh3BYtOxthtNcLbx87OJsdtg",
      "page" => "/pages/points/index",
      "data" => {
          "thing1" => {"value" => "#{self.user.name}"},
          "number2" => {"value" => "#{self.user.balance}"},
          "number5" => {"value" => "#{self.points}"},
          "thing3" => {"value" => "#{self.title.truncate(20)}"},
        }
      }.to_json
    )
  end
end
