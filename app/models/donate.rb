# == Schema Information
#
# Table name: donates
#
#  id                :integer          not null, primary key
#  content           :text
#  user_id           :integer
#  manager_id        :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_donates_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

class Donate < ActiveRecord::Base
  belongs_to :categoryable, polymorphic: true
  belongs_to :manager
  belongs_to :user
  has_many :pictures, as: :imageable
  accepts_nested_attributes_for :pictures, allow_destroy: true
end
