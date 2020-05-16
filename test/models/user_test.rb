# == Schema Information
#
# Table name: users
#
#  id           :integer          not null, primary key
#  phone        :string(255)
#  name         :string(255)
#  province     :string(255)
#  city         :string(255)
#  district     :string(255)
#  manager_id   :integer
#  parent_phone :string(255)
#  openid       :string(255)
#  birthday     :date
#  balance      :decimal(10, 2)   default(0.0)
#  levels       :string(255)      default("tourist")
#  expired_at   :date
#  avatar       :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  number       :string(255)
#
# Indexes
#
#  index_users_on_manager_id    (manager_id)
#  index_users_on_name          (name)
#  index_users_on_openid        (openid)
#  index_users_on_parent_phone  (parent_phone)
#  index_users_on_phone         (phone)
#  index_users_on_province      (province)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
