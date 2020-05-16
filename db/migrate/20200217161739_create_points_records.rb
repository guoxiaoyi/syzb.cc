class CreatePointsRecords < ActiveRecord::Migration
  def change
    create_table :points_records do |t|
      t.integer :user_id
      t.decimal :points, precision: 10, scale: 2
      t.decimal :balance, precision: 10, scale: 2
      t.string :title, index: true
      t.string :brief

      t.timestamps
    end
  end
end
