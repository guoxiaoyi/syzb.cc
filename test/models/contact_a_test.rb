# == Schema Information
#
# Table name: contact_as
#
#  id         :integer          not null, primary key
#  name       :string(20)
#  tel        :string(30)
#  zone       :string(30)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ContactATest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
