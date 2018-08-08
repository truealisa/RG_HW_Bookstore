class AddCvvToCreditCards < ActiveRecord::Migration[5.2]
  def change
    add_column :credit_cards, :cvv, :string
  end
end
