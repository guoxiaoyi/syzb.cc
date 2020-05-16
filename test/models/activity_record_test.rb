# == Schema Information
#
# Table name: activity_records
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  activity_id :integer
#  status      :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class ActivityRecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
