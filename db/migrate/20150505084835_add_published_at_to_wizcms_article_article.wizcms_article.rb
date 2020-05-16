# This migration comes from wizcms_article (originally 20150505084807)
class AddPublishedAtToWizcmsArticleArticle < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :published_at, :datetime
  end
end
