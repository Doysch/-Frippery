class CreateCostumes < ActiveRecord::Migration[7.0]
  def change
    create_table :costumes do |t|
      t.references :user_id, null: false, foreign_key: true
      t.string :location
      t.string :genre
      t.string :size
      t.float :price

      t.timestamps
    end
  end
end
