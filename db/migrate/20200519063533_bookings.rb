class Bookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.float :total_price, default: 0.0
      t.references :car
      t.references :customer
      t.boolean :returned, default: false
      t.timestamps
    end
  end
end