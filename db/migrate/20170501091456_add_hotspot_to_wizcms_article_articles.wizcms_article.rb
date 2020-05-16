# This migration comes from wizcms_article (originally 20170313065707)
class AddHotspotToWizcmsArticleArticles < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :hotspot, :boolean
  end
end
