module WizcmsArticle
  class Article < ActiveRecord::Base
    belongs_to :article_category
    validates_presence_of :title
    validates_presence_of :article_category_id
    validates :brief, length: { maximum: 200 }
    mount_uploader :picture, ImageUploader
    scope :latest, ->( number ) { limit( number ).order('updated_at desc') }

    scope :category, ->(param) {
      unless param.nil? || param.empty?
        where(:article_category_id => param)
      end
    }

    scope :sc_cite_key, -> ( key ) { where( cite_key: key ) }

    scope :search_title, ->( search ) {
      unless search.nil? || search.empty?
        where(arel_table[:title].matches("%#{search}%"))
      end
    }

    scope :search_content, ->( search ) {
      unless search.nil? || search.empty?
        where(arel_table[:content].matches("%#{search}%"))
      end
    }

    def new_img
      if self.hotspot
        true
      else
        false
      end
    end

    def self.get( aid )
      if aid =~ /^\d{1,10}$/
        self.find( aid )
      elsif aid =~ /^[a-zA-Z]+[\w\d]{1,20}$/
        self.sc_cite_key( aid ).first
      end
    end
    def previous
      self.class.where('id < ? AND article_category_id = ?', self.id, self.article_category_id).limit(1).order("id DESC")[0]
     end

     def next
      self.class.where('id > ? AND article_category_id = ?', self.id, self.article_category_id).limit(1).order("id ASC")[0]
     end
  end
end
