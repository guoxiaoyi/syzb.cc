class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.text :content
      t.integer :customize_order
      t.references :categoryable, polymorphic: true, index: true
      t.datetime :start_time
      t.string :location
      t.string :picture
      t.integer :manager_id
      t.decimal :price, precision: 10, scale: 2
      t.string :description
      t.boolean :hotspot, default: true
      t.timestamps
    end
  end
end
