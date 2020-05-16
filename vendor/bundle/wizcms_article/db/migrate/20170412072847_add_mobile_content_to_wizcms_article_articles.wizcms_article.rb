# This migration comes from wizcms_article (originally 20170412061237)
class AddMobileContentToWizcmsArticleArticles < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :mobile_content, :text
  end
end
