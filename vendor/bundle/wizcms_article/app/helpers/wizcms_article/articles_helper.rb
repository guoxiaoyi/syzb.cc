module WizcmsArticle
  module ArticlesHelper
    def show_content(article)
      case
      when request.user_agent =~ /(iPhone|Android|iPod touch|iPad)/
        (article.mobile_content == "" || article.mobile_content.nil? ) ? article.content : article.mobile_content
      else
        (article.content == "" || article.content.nil? ) ? article.mobile_content : article.content
      end
    end
  end
end
