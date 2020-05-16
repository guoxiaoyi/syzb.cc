module WizcmsArticle
  class Page < ActiveRecord::Base
    validates_presence_of :title
    validates_presence_of :content

    scope :sc_cite_key, -> ( key ) { where( cite_key: key ) }

    has_many :children, class_name: "Page", foreign_key: "parent_id"

    belongs_to :parent, class_name: "Page", foreign_key: "parent_id"


    def root_page
      # unless self.parent
      #   return self
      # end

      unless @root_page
        @root_page = self.root_parent(self)
      end
      @root_page
    end

    def root_parent( page )
      unless page.parent
        return page
      end
      if page.parent
        self.root_parent(page.parent)
      end
    end



    def self.get( pid )
      if pid =~ /^\d{1,10}$/
        self.find( pid )
      elsif pid =~ /^[a-zA-Z]+[\w\d]{1,20}$/
        self.sc_cite_key( pid ).first
      end
    end


  end
end
