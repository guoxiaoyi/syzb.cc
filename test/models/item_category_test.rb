# == Schema Information
#
# Table name: item_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cite_key   :string(255)
#  parent_id  :integer
#  manager_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ItemCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
