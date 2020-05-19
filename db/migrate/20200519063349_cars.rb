class Cars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :description
      t.string :type
      t.string :image_url
      t.float :price_per_hour
      t.boolean :available, default: true
      t.timestamps
    end
  end
end