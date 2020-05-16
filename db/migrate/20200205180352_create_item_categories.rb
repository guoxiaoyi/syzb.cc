class CreateItemCategories < ActiveRecord::Migration
  def change
    create_table :item_categories do |t|
      t.string :name
      t.string :cite_key
      t.integer :parent_id
      t.integer :manager_id
      t.timestamps
    end
  end
end
