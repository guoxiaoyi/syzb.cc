class CreateWizcmsArticleArticleCategories < ActiveRecord::Migration
  def change
    create_table :wizcms_article_article_categories do |t|
      t.string   "name",         limit: 50
      t.integer  "custom_order"
      t.integer  "parent_id"
      t.string   "brief",        limit: 200
      t.boolean  "published"
      t.string   "cite_key",     limit: 50

      t.timestamps
    end
  end
end
