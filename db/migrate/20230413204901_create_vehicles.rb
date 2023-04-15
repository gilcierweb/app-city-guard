class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.integer :kind
      t.string :brand
      t.string :model
      t.string :color
      t.string :state_name
      t.string :city_name
      t.string :plate
      t.string :tachometer
      t.string :chassi
      t.string :engine_number
      t.references :brand, null: true, foreign_key: true
      t.references :state, null: true, foreign_key: true
      t.references :city, null: true, foreign_key: true
      t.references :conductor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
