class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.text :description
      t.decimal :price, precision: 7, scale: 2, null: false
      t.integer :quantity, null: false
      t.date :year_of_publication
      t.decimal :height, precision: 3, scale: 1
      t.decimal :width, precision: 3, scale: 1
      t.decimal :depth, precision: 3, scale: 1
      t.string :materials

      t.timestamps
    end
  end
end
