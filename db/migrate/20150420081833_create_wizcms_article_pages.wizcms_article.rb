# This migration comes from wizcms_article (originally 20140411021632)
class CreateWizcmsArticlePages < ActiveRecord::Migration
  def change
    create_table :wizcms_article_pages do |t|
      t.string :title,        limit: 100
      t.text :content
      t.boolean :published
      t.string :cite_key,     limit: 50
      t.string :keywords
      t.string :brief,        limit: 200
      t.integer :parent_id

      t.timestamps
    end
  end
end
