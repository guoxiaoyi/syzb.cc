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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
