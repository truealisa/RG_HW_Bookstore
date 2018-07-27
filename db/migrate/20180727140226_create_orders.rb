class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :total_price, precision: 7, scale: 2, null: false
      t.string :state, null: false
      t.date :completed_date

      t.timestamps
    end
  end
end
