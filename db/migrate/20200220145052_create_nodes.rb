class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :title
      t.integer :manager_id

      t.timestamps
    end
  end
end
