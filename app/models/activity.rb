# == Schema Information
#
# Table name: activities
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  content           :text
#  customize_order   :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  start_time        :datetime
#  location          :string(255)
#  picture           :string(255)
#  manager_id        :integer
#  price             :integer
#  description       :string(255)
#  hotspot           :boolean          default(TRUE)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_activities_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

class Activity < ActiveRecord::Base
  belongs_to :manager
  belongs_to :categoryable, polymorphic: true
  has_many :activity_records

  validates :categoryable_id, :categoryable_type, :price, :description, :start_time, :location, presence: true

  mount_uploader :picture, ImageUploader
  after_create :send_miniprograme_message

  def send_miniprograme_message
    self.manager.users.each do |user|
      self.send_message(user)
    end
  end

  def send_message(user)
    res = HTTParty.post("https://api.weixin.qq.com/cgi-bin/message/subscribe/send?access_token=#{Activity.get_access_token}", body: {
      "touser" => "#{user.openid}",
      "template_id" => "Ie746QToyeGfGWKkoAH6wlJVYhvYK9hJsqg0CJ4qif4",
      "page" => "/pages/activity/show?id=#{self.id}",
      "data" => {
          "thing1" => {"value" => "#{self.title}"},
          "date2" => {"value" => "#{self.start_time.strftime("%F")}"},
          "thing3" => {"value" => "#{self.description}"},
          "name4" => {"value" => "#{self.manager.name}"}
        }
      }.to_json
    )
  end

  def gettemplate
    # 最新活动通知 Ie746QToyeGfGWKkoAH6wlJVYhvYK9hJsqg0CJ4qif4
    HTTParty.get("https://api.weixin.qq.com/wxaapi/newtmpl/gettemplate?access_token=#{Activity.get_access_token}")
  end


  def get_wxacode
    response = HTTParty.post("https://api.weixin.qq.com/wxa/getwxacodeunlimit?access_token=#{Activity.get_access_token}", body:{
      "page": "pages/activity/join",
      "width": 500,
      "scene": "#{self.id}",
      "is_hyaline": true
    }.to_json)
  end
  private
  def self.get_access_token
    Rails.cache.fetch("../access_token", expires_in: 2.hours) do
      response = HTTParty.get('https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=wx3d44729118c26f7b&secret=394aa0fc60fcf6d8c2986cb22255457e')
      response["access_token"]
    end
  end
end
