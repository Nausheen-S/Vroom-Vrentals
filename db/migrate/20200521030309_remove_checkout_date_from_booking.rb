class RemoveCheckoutDateFromBooking < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :checkout_date, :string
  end
end