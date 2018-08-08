class CreateCreditCards < ActiveRecord::Migration[5.2]
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.string :exp_month
      t.string :exp_year
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
