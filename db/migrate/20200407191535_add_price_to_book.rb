class AddPriceToBook < ActiveRecord::Migration
  def change
    add_column :books, :price, :decimal, precision: 10, scale: 2, default: 0
  end
end
