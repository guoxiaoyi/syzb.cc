class CreateWizcmsArticleArticles < ActiveRecord::Migration
  def change
    create_table :wizcms_article_articles do |t|
      t.string :title,  limit: 100
      t.string :author, limit: 50
      t.boolean :published
      t.string :brief,  limit: 200
      t.text :content
      t.integer :article_category_id

      t.timestamps
    end
  end
end
