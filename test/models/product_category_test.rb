# == Schema Information
#
# Table name: product_categories
#
#  id         :integer          not null, primary key
#  name       :string(100)
#  created_at :datetime
#  updated_at :datetime
#  language   :integer
#  cid        :integer
#  en_title   :string(100)
#  zh_title   :string(100)
#  jp_title   :string(100)
#  ko_title   :string(100)
#

require 'test_helper'

class ProductCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
