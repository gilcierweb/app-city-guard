class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.integer :code_ibge
      t.string :abbreviation
      t.string :name_pt_BR
      t.string :name_en
      t.string :name_es
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
