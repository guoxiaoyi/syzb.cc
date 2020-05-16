# == Schema Information
#
# Table name: product_pictures
#
#  id            :integer          not null, primary key
#  path          :string(255)
#  product_id    :integer
#  custom_order  :integer
#  pricture_type :integer
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class ProductPictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
