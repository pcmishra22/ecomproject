class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity
      t.references :category, null: false, foreign_key: true
      t.references :strength, null: false, foreign_key: true

      t.timestamps
    end
  end
end
