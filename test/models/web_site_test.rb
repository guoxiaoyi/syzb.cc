# == Schema Information
#
# Table name: web_sites
#
#  id               :integer          not null, primary key
#  title            :string(255)
#  keywords         :string(255)
#  description      :string(255)
#  qq               :string(255)
#  tel              :string(255)
#  service          :string(255)
#  qrcode           :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#  email            :string(255)
#  web_app          :string(255)
#  supplement       :text
#  supplement_style :text
#

require 'test_helper'

class WebSiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
