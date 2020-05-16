# == Schema Information
#
# Table name: tao_cans
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  tel         :string(255)
#  mj_id       :integer
#  taocan_type :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class TaoCanTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
