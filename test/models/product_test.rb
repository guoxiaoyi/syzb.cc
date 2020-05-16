# == Schema Information
#
# Table name: products
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  manager_id        :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  price             :decimal(10, 2)
#  discount          :decimal(10, 2)
#  detail            :text
#  online            :boolean          default(TRUE)
#  customize_order   :integer
#  recommendation    :boolean
#  created_at        :datetime
#  updated_at        :datetime
#  stock             :integer          default(0)
#
# Indexes
#
#  index_products_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
