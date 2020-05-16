# == Schema Information
#
# Table name: pictures
#
#  id             :integer          not null, primary key
#  position       :integer
#  url            :string(255)
#  imageable_id   :integer
#  imageable_type :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_pictures_on_imageable_id_and_imageable_type  (imageable_id,imageable_type)
#

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
