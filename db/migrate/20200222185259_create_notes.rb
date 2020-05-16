class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.boolean :recommendation, default: false
      t.boolean :is_over, default: false
      t.integer :user_id
      t.integer :manager_id
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
