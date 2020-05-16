class CreateActivityRecords < ActiveRecord::Migration
  def change
    create_table :activity_records do |t|
      t.integer :user_id
      t.integer :activity_id
      t.integer :status

      t.timestamps
    end
  end
end
