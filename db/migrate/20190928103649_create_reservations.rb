class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :item_id
      t.timestamp :start_date
      t.timestamp :end_date

      t.timestamps
    end
  end
end
