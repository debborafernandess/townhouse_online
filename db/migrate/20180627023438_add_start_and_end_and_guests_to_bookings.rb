class AddStartAndEndAndGuestsToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start, :time
    add_column :bookings, :end, :time
    add_column :bookings, :guests, :integer, default: 1
  end
end
