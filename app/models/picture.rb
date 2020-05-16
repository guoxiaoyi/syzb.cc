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

class Picture < ActiveRecord::Base
  belongs_to :imageable, polymorphic: true
  mount_uploader :url, ImageUploader
end
