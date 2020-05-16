class CreateVips < ActiveRecord::Migration
  def change
    create_table :vips do |t|
      t.string :name
      t.integer :levels
      t.decimal :price, precision: 10, scale: 2
      t.integer :parent_id
      t.text :content

      t.timestamps
    end
    add_index :vips, :parent_id
  end
end
