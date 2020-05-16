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

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
