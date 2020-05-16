# == Schema Information
#
# Table name: project_contacts
#
#  id           :integer          not null, primary key
#  work_site_id :integer
#  name         :string(255)
#  tel          :string(255)
#  datetime     :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'test_helper'

class ProjectContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
