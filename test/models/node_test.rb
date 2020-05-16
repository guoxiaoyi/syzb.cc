# == Schema Information
#
# Table name: nodes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  manager_id :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class NodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
