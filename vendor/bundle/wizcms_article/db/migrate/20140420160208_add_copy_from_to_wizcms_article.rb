class AddCopyFromToWizcmsArticle < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :copy_from, :string, limit: 150
  end
end
