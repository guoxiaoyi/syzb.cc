# == Schema Information
#
# Table name: contents
#
#  id         :integer          not null, primary key
#  name       :string(50)
#  email      :string(50)
#  tel        :string(30)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
