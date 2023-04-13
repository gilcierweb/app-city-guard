class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.integer :code
      t.string :name
      t.integer :kind

      t.timestamps
    end
  end
end
