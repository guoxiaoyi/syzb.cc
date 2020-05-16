# This migration comes from wizcms_link (originally 20140929152235)
class CreateWizcmsLinkCategories < ActiveRecord::Migration
  def change
    create_table :wizcms_link_categories do |t|
      t.string :name, limit: 50
      t.integer :custom_order
      t.integer :parent_id
      t.string :brief, limit: 200
      t.boolean :published
      t.string :cite_key, limit: 50
      t.integer :manager_id

      t.timestamps
    end
  end
end
