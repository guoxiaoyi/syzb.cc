class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :manager_id
      t.references :categoryable, polymorphic: true, index: true
      t.decimal :price, precision: 10, scale: 2
      t.decimal :discount, precision: 10, scale: 2
      t.text :detail
      t.boolean :online, default: true
      t.integer :customize_order
      t.boolean :recommendation

      t.timestamps
    end
  end
end
