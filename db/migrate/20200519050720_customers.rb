class Customers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :lisence_number
      t.date :lisence_expiry
      t.references :user
      t.timestamps
    end
  end
end