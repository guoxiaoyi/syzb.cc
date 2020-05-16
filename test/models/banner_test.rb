# == Schema Information
#
# Table name: banners
#
#  id         :integer          not null, primary key
#  path       :string(255)
#  order      :integer
#  url        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class BannerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
