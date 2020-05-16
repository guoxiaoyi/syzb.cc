# == Schema Information
#
# Table name: books
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  brief             :string(255)
#  manager_id        :integer
#  categoryable_id   :integer
#  categoryable_type :string(255)
#  detail            :text
#  online            :boolean          default(TRUE)
#  customeize_order  :integer
#  created_at        :datetime
#  updated_at        :datetime
#  price             :decimal(10, 2)   default(0.0)
#  stock             :integer          default(0)
#
# Indexes
#
#  index_books_on_categoryable_id_and_categoryable_type  (categoryable_id,categoryable_type)
#

class Book < ActiveRecord::Base
  validates :categoryable_id, :categoryable_type, :name, presence: true
  belongs_to :categoryable, polymorphic: true
  belongs_to :manager
  has_many :orders, as: :categoryable
  has_many :pictures, as: :imageable
  accepts_nested_attributes_for :pictures, allow_destroy: true
  has_many_kindeditor_assets :attachments, :dependent => :destroy
end
