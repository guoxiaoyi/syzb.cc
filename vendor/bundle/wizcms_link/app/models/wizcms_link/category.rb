module WizcmsLink
  class Category < ActiveRecord::Base
    has_many :links, dependent: :destroy
    belongs_to :manager, class_name: 'Manager', foreign_key: 'manager_id'

    validates_presence_of :name
    validates_presence_of :parent_id
    validate :not_select_self

    def not_select_self
      errors.add(:parent_id, "is not self") if self.id == self.parent_id
    end
    scope :root, ->{ where parent_id: 0 }

    scope :sc_cite_key, -> ( key ) { where( cite_key: key ) }


    attr_accessor :level, :parent

    def parent_category
      self.class.find( self.parent_id )
    rescue
      CategoryRoot.new
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

    def self.get( acid )
      if acid =~ /^\d{1,10}$/
        self.find( aid )
      elsif acid =~ /^[a-zA-Z]+[\w\d]{1,20}$/
        self.sc_cite_key( acid ).first
      end
    end

  end

  class CategoryRoot
    def id
      0
    end
    def tree_select_name
      name
    end
    def name
      '根分类(最顶级)'
    end
  end


end
