# == Schema Information
#
# Table name: replies
#
#  id         :integer          not null, primary key
#  topic_id   :integer
#  user_id    :integer
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_replies_on_topic_id  (topic_id)
#

require 'test_helper'

class ReplieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
