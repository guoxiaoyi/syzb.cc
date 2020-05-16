class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :code
      t.decimal :total_price, precision: 10, scale: 2
      t.datetime :pick_up_at
      t.string :pick_up_token
      t.datetime :pick_up_ed
      t.integer :user_id
      t.integer :manager_id
      t.integer :status
      t.references :categoryable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
