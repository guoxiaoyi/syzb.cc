class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :brief
      t.integer :manager_id
      t.references :categoryable, polymorphic: true, index: true
      t.text :detail
      t.boolean :online, default: true
      t.integer :customeize_order

      t.timestamps
    end
  end
end
