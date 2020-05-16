# == Schema Information
#
# Table name: orders
#
#  id                :integer          not null, primary key
#  code              :string(255)
#  total_price       :decimal(10, 2)
#  pick_up_at        :datetime
#  pick_up_token     :string(255)
#  pick_up_ed        :datetime
#  user_id           :integer
#  manager_id        :integer
#  status            :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_orders_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
