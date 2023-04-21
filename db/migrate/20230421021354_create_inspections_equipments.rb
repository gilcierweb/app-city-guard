class CreateInspectionsEquipments < ActiveRecord::Migration[7.0]
  def change
    create_table :inspections_equipments do |t|
      t.references :inspection, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
