class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :townhouse_area, foreign_key: true, null: false
      t.date :reserved_to

      t.timestamps
    end

    add_index :bookings, [:townhouse_area_id, :reserved_to], unique: true
  end
end
