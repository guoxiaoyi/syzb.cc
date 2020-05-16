class CreateWizcmsLinkLinks < ActiveRecord::Migration
  def change
    create_table :wizcms_link_links do |t|
      t.string :title, limit: 200
      t.string :url, limit: 255
      t.string :image, limit: 200
      t.boolean :published
      t.integer :category_id
      t.string :cite_key, limit: 50
      t.integer :custom_order

      t.timestamps
    end
  end
end
