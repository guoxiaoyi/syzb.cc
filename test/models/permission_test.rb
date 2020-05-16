# == Schema Information
#
# Table name: permissions
#
#  id          :integer          not null, primary key
#  action      :string(255)
#  subject     :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class PermissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
