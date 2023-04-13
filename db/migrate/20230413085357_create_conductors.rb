class CreateConductors < ActiveRecord::Migration[7.0]
  def change
    create_table :conductors do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :nickname
      t.integer :cpf, limit: 8
      t.text :bio
      t.date :birthday
      t.boolean :qualified
      t.references :inspection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
