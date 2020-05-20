class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :nianji
      t.string :city
      t.string :email
      t.string :leixing
      t.text :content

      t.timestamps null: false
    end
  end
end
