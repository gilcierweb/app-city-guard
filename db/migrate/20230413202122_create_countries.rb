class CreateCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :countries do |t|
      t.integer :code
      t.string :name_pt_BR
      t.string :name_en
      t.string :name_es

      t.timestamps
    end
  end
end
