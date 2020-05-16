class AddPictureToWizcmsArticleArticles < ActiveRecord::Migration
  def change
    add_column :wizcms_article_articles, :picture, :string
  end
end
