class AddDescriptionField < ActiveRecord::Migration
  def change
    add_column :books, :description, :text
  end
end
