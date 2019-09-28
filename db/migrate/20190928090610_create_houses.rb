class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :price
      t.string :name
      t.string :address
      t.string :concept

      t.timestamps
    end
  end
end
