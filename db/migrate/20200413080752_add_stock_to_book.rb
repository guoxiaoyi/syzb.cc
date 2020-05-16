class AddStockToBook < ActiveRecord::Migration
  def change
    add_column :books, :stock, :integer, default: 0
  end
end
