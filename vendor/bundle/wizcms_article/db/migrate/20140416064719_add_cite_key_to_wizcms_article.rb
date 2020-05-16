class AddCiteKeyToWizcmsArticle < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :cite_key, :string, limit: 50
  end
end
