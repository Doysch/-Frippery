class AddNameToCostumes < ActiveRecord::Migration[7.0]
  def change
    add_column :costumes, :name, :string
    remove_column :costumes, :genre
  end
end
