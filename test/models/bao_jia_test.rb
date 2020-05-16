# == Schema Information
#
# Table name: bao_jia
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  tel        :string(255)
#  fg_id      :integer
#  hx         :string(255)
#  created_at :datetime
#  updated_at :datetime
#  yusuan_id  :integer
#  yy_type    :string(255)
#

require 'test_helper'

class BaoJiaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
