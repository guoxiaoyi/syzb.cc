# == Schema Information
#
# Table name: vips
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  levels     :integer
#  price      :decimal(10, 2)
#  parent_id  :integer
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_vips_on_parent_id  (parent_id)
#

class Vip < ActiveRecord::Base
  has_one :next_levels, class_name: "Vip", foreign_key: "parent_id"
end
