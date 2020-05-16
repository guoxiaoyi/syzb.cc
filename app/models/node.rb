# == Schema Information
#
# Table name: nodes
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  manager_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Node < ActiveRecord::Base
  belongs_to :manager
  has_many :topics, dependent: :destroy
  validates :title, :manager_id, presence: true

end
