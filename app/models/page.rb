# == Schema Information
#
# Table name: pages
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  content        :text
#  created_at     :datetime
#  updated_at     :datetime
#  mobile_content :text
#  url            :string(255)
#

class Page < ActiveRecord::Base
  validates :url, uniqueness: true
end
