# == Schema Information
#
# Table name: item_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cite_key   :string(255)
#  parent_id  :integer
#  manager_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class ItemCategory < ActiveRecord::Base
  belongs_to :manager
  has_many :products, as: :categoryable, dependent: :destroy
  has_many :books, as: :categoryable, dependent: :destroy
  has_many :activities, as: :categoryable, dependent: :destroy

  validates :name, :manager_id, :parent_id, presence: true

  attr_accessor :level, :parent
  def self.tree
    ordered = []
    all_cate = self.all
    root_cate = all_cate.collect{|c| c if c.parent_id == 0 }.compact
    root_cate.each do |r|
      r.level = 0
      r.parent = nil
      ordered.push(r)
      recursion( r, all_cate, ordered )
    end
    ordered
  end

  def self.recursion( curcate, allcate, rordered )
    curcate.children( allcate ).each do |c|
      c.parent = curcate
      c.level = c.parent.level + 1
      rordered.push(c)
      recursion( c, allcate, rordered)
    end if curcate
  end

  def children( all_cate = [] )
    if all_cate.is_a?( Array ) && !all_cate.empty?
      all_cate.collect{ |pc| pc if self.id == pc.parent_id }.compact
    else
      self.class.where( parent_id: self.id )
    end
  end

  def level_string
    # ┌ └ ┐ ┘ ─ │ ├ ┤ ┬ ┴ ┼
    return '' + '├' if self.level == 0
    return '│' * (self.level) + '├' if self.level > 0
  end

  def tree_select_name
    level_string + name
  end
end