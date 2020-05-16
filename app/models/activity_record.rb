# == Schema Information
#
# Table name: activity_records
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  activity_id :integer
#  status      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class ActivityRecord < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity
  after_update :set_points_record
  after_create :send_message_created
  def set_points_record
    if self.status == 2
      if self.user.points_records.where(title: self.activity.title).blank?
        user.points_records.new(points: self.activity.price, balance: user.balance+self.activity.price, title: self.activity.title, brief: "参加<#{self.activity.title}>奖励").save
      end
    end
  end

  # 报名审核通知
  def send_message_created
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{user.openid}",
      "template_id" => "E1za-Yj9tOpz65kIQ_edtz-QwXAq6Oo6nT6uVoeDvh8",
      "page" => "/pages/activity/show?id=#{self.activity.id}",
      "data" => {
          "thing1" => {"value" => "#{self.activity.title}"},
          "thing2" => {"value" => "#{self.user.name}"},
          "thing3" => {"value" => "报名成功"},
        }
      }.to_json
    )
  end
end
