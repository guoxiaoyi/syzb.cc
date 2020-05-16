# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  node_id    :integer
#  user_id    :integer
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_topics_on_node_id  (node_id)
#

class Topic < ActiveRecord::Base
  has_many :replies, dependent: :destroy
  belongs_to :node
  belongs_to :user

  validates :title, presence: true

end
