class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :node_id
      t.integer :user_id
      t.string :title
      t.text :content

      t.references :node, index: true
      t.timestamps
    end
  end
end
