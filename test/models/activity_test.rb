# == Schema Information
#
# Table name: activities
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  content           :text
#  customize_order   :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  start_time        :datetime
#  location          :string(255)
#  picture           :string(255)
#  manager_id        :integer
#  price             :integer
#  description       :string(255)
#  hotspot           :boolean          default(TRUE)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_activities_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
