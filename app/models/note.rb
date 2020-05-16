# == Schema Information
#
# Table name: notes
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  content        :text
#  recommendation :boolean          default(FALSE)
#  is_over        :boolean          default(FALSE)
#  user_id        :integer
#  manager_id     :integer
#  price          :decimal(10, 2)
#  created_at     :datetime
#  updated_at     :datetime
#

class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :manager
  after_create :update_manager
  after_save :set_points_record

  validates :title, :content, presence: true

  def update_manager
    self.update(manager_id: user.manager.id)
  end

  def set_points_record
    if recommendation && !is_over
      user.points_records.new(points: self.price, balance: user.balance+self.price, title: self.title, brief: "分享<#{self.title}>奖励").save
      self.update(is_over: true)
    end
  end
end
