class AddCheckoutDatetoBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :checkout_date, :date
  end
end