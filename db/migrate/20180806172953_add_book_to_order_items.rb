class AddBookToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :book, foreign_key: true
  end
end
