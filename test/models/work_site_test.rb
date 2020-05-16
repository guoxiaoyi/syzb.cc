# == Schema Information
#
# Table name: work_sites
#
#  id           :integer          not null, primary key
#  title        :string(50)
#  mj           :string(10)
#  fg_id        :integer
#  designer_id  :integer
#  address      :string(255)
#  build_before :text
#  building     :text
#  build_after  :text
#  picture      :string(255)
#  state        :integer
#  created_at   :datetime
#  updated_at   :datetime
#  jianli       :string(10)
#

require 'test_helper'

class WorkSiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
