# == Schema Information
#
# Table name: points_records
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  points     :decimal(10, 2)
#  balance    :decimal(10, 2)
#  title      :string(255)
#  brief      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class PointsRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
