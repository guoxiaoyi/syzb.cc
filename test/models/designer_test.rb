# == Schema Information
#
# Table name: designers
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  zw                :string(20)
#  gl                :integer
#  content           :text
#  avatar            :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  designer_group_id :integer
#  fg_id             :integer
#  custom_order      :integer
#

require 'test_helper'

class DesignerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
