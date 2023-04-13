class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :nickname
      t.integer :cpf, limit: 8
      t.integer :number
      t.text :bio
      t.date :birthday
      t.string :avatar
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
