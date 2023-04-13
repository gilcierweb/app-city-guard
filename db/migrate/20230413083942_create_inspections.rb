class CreateInspections < ActiveRecord::Migration[7.0]
  def change
    create_table :inspections do |t|
      t.integer :code
      t.string :motive_apprehension
      t.string :address_full
      t.decimal :latitude
      t.decimal :longitude
      t.string :neighborhood
      t.text :observations
      t.integer :situation
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
