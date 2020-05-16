# == Schema Information
#
# Table name: notes
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  content        :text
#  recommendation :boolean          default(FALSE)
#  is_over        :boolean          default(FALSE)
#  user_id        :integer
#  manager_id     :integer
#  price          :decimal(10, 2)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
