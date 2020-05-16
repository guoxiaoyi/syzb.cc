module WizcmsArticle
  class ArticleCategory < ActiveRecord::Base
    has_many :articles, dependent: :destroy
    belongs_to :manager, class_name: 'Manager', foreign_key: 'manager_id'
    validates_presence_of :name
    validates_presence_of :parent_id

    scope :root, ->{ where parent_id: 0 }

    scope :sc_cite_key, -> ( key ) { where( cite_key: key ) }


    attr_accessor :level, :parent

    def parent_category
      self.class.find( self.parent_id )
    rescue
      ArticleCategoryRoot.new
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

    def get_articles_with_chidren
      category_ids = children.map { |cac| cac.id  }
      WizcmsArticle::Article.where(article_category_id: category_ids.push( self.id ) )
      # WizcmsArticle::Article.none

    end

    def get_articles( with_children = false )
      if with_children
        self.get_articles_with_chidren
      else
        self.articles
      end
    end

    def self.get_category_articles( acid = nil )
      article_category = self.get( acid )
      if article_category
        article_category.get_articles( true )
      else
        WizcmsArticle::Article.none
      end
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
        self.find( acid )
      elsif acid =~ /^[a-zA-Z]+[\w\d]{1,20}$/
        self.sc_cite_key( acid ).first
      end
    end

  end
  class ArticleCategoryRoot
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
