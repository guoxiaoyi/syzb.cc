# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  phone        :string(255)
#  name         :string(255)
#  province     :string(255)
#  city         :string(255)
#  district     :string(255)
#  manager_id   :integer
#  parent_phone :string(255)
#  openid       :string(255)
#  birthday     :date
#  balance      :decimal(10, 2)   default(0.0)
#  levels       :string(255)      default("tourist")
#  expired_at   :date
#  avatar       :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  number       :string(255)
#
# Indexes
#
#  index_users_on_manager_id    (manager_id)
#  index_users_on_name          (name)
#  index_users_on_openid        (openid)
#  index_users_on_parent_phone  (parent_phone)
#  index_users_on_phone         (phone)
#  index_users_on_province      (province)
#

class User < ActiveRecord::Base
  validates :openid, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
  # validates :number, presence: true, uniqueness: true, on: :update
  validates :manager_id, presence: true
  after_create :update_levels
  belongs_to :manager
  has_many :orders, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :replies, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :donates, dependent: :destroy
  has_many :activity_records, dependent: :destroy
  has_many :points_records, dependent: :destroy
  def update_levels
    # User.where(openid: self.openid).each do |user|
    self.update(levels: 1) if self.levels == 'tourist'
    # end
    cur_user = User.find_by(phone: parent_phone)

    unless cur_user.nil?
      if self.parent_phone != self.phone
        cur_user.points_records.new(
          points: 50,
          balance: cur_user.balance+50,
          title: "推荐奖励",
          brief: "推荐<#{self.name}>奖励"
        ).save

        self.points_records.new(
          points: 5,
          balance: self.balance+5,
          title: "被邀请注册奖励",
          brief: "通过#{cur_user.name}推荐获得奖励"
        ).save
      end
    end
  end

  def discount
    {1 => 0.1, 2 => 0.2, 3 => 0.3, 4 =>0.4}.as_json[levels]
  end

  def next_levels
    unless ['tourist','vip'].include?(levels)
      vip = Vip.find(levels)
      vip.next_levels.as_json unless vip.next_levels.nil?
    else
      Vip.find_by(parent_id: nil).as_json
    end
  end

  def parent
    User.find_by(phone: self.parent_phone) || User.new
  end

  def current_levels
    if ['tourist','vip'].include?(levels)
      "普通会员"
    else
      Vip.find(levels).name
    end
  end

  def self.days_in_year
    days = 0
    12.times{|a| days += Time.days_in_month(a+1)}
    days
  end

  def left_days
    if levels == 'tourist' || levels == 'vip' || expired_at.nil?
      0
    else
      (expired_at - Date.today).days/1.days
    end
  end

  def to_percent
    left_time = (left_days/User.days_in_year)*100
    format('%.2f', left_time)
  end

  # 会员升级提醒
  def send_message_vip
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{openid}",
      "template_id" => "qfxpLoHY56CRXD6t-ytGdEiMyAKEQhottInsGL0IVWE",
      "page" => "/pages/my/show",
      "data" => {
          "thing1" => {"value" => "#{self.current_levels}"},
          "date2" => {"value" => "#{expired_at.to_s}"},
        }
      }.to_json
    )
  end

  # 会员即将到期提醒
  def send_message_expired
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Wechat.get_access_token}", body: {
      "touser" => "#{openid}",
      "template_id" => "PCQ3MTC0nuwV-SngQMku99eJmXChrGOxz0jMQsiS6OU",
      "page" => "/pages/vip/index",
      "data" => {
          "time1" => {"value" => "#{self.created_at.to_s(:date)}"},
          "time2" => {"value" => "#{self.expired_at.to_s(:wechat_time)}"},
        }
      }.to_json
    )
  end

end
