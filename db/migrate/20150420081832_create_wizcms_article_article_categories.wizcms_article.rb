# This migration comes from wizcms_article (originally 20140410132827)
class CreateWizcmsArticleArticleCategories < ActiveRecord::Migration
  def change
    create_table :wizcms_article_article_categories do |t|
      t.string   "name",         limit: 50
      t.integer  "custom_order"
      t.integer  "parent_id"
      t.string   "brief",        limit: 200
      t.boolean  "published"
      t.string   "cite_key",     limit: 50
      t.integer :manager_id
      t.timestamps
    end
  end
end
