# == Schema Information
#
# Table name: designer_departments
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  designer_id       :integer
#  designer_group_id :integer
#  created_at        :datetime
#  updated_at        :datetime
#

require 'test_helper'

class DesignerDepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
