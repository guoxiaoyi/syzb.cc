# This migration comes from wizcms_article (originally 20140416064719)
class AddCiteKeyToWizcmsArticle < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :cite_key, :string, limit: 50
  end
end
