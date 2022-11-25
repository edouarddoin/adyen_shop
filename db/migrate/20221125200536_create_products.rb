class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :stock
      t.text :description
      t.string :name
      t.string :sku
      t.references :categorie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
