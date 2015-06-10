class AddPriceColumn < ActiveRecord::Migration
  def change
    add_column :books, :price, :float, :scale => 2
  end
end
