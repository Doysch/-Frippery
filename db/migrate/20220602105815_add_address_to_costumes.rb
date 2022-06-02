class AddAddressToCostumes < ActiveRecord::Migration[7.0]
  def change
    add_column :costumes, :address, :string
  end
end
