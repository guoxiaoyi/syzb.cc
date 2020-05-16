class AddHotspotToWizcmsArticleArticles < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :hotspot, :boolean
  end
end
