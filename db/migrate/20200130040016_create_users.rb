class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :phone
      t.string :name
      t.string :province
      t.string :city
      t.string :district
      t.integer :manager_id
      t.string :parent_phone
      t.string :openid
      t.date :birthday
      t.decimal :balance, precision: 10, scale: 2, default: 0
      t.string :levels, default: 'tourist'
      t.date :expired_at
      t.string :avatar

      t.timestamps
    end
    add_index :users, :phone
    add_index :users, :name
    add_index :users, :openid
    add_index :users, :manager_id
    add_index :users, :province
    add_index :users, :parent_phone

  end
end
