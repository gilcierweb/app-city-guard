class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.integer :code_ibge
      t.string :name_pt_BR
      t.string :name_en
      t.string :name_es
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
