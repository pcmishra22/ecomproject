class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image
      t.integer :parentid
      t.references :site, null: false, foreign_key: true

      t.timestamps
    end
  end
end
