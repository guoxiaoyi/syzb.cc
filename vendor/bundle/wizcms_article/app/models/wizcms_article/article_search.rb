module WizcmsArticle
  class ArticleSearch
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    extend ActiveModel::Translation

    attr_accessor :title, :content, :article_category_id

    # PTQ-00002-00
    # validates :order_serial , :format => { :with => /^[\w\d\-]+$/,:multiline => true }, :presence => false


    def initialize(attributes = {})
      attributes ||= {}
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
  
    def persisted?
      false
    end
  
  end

end
