# == Schema Information
#
# Table name: designer_contacts
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  designer_id :integer
#  zone        :string(255)
#  tel         :string(255)
#  mj          :string(255)
#  datetime    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class DesignerContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
