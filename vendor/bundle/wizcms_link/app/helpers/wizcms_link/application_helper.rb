module WizcmsLink
  module ApplicationHelper
    def wizcms_link_category( cite_key, limit = 5 )
      cate = Category.sc_cite_key( cite_key ).first
      cate ? cate.links.limit(limit) : Link.none
    end
  end
end
