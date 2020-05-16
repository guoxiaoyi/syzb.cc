class CreateDonates < ActiveRecord::Migration
  def change
    create_table :donates do |t|
      t.text :content
      t.integer :user_id
      t.integer :manager_id
      t.references :categoryable, polymorphic: true, index: true
      
      t.timestamps
    end
  end
end
