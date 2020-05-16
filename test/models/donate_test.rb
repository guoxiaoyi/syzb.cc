# == Schema Information
#
# Table name: donates
#
#  id                :integer          not null, primary key
#  content           :text
#  user_id           :integer
#  manager_id        :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#
# Indexes
#
#  index_donates_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

require 'test_helper'

class DonateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
