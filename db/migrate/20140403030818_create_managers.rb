class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name, limit: 50
      t.string :email, limit: 100
      t.string :password_digest, limit: 100
      t.boolean :supper, default: false
      t.boolean :disabled, default: false

      t.timestamps
    end
  end
end
