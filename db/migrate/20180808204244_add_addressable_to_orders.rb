class AddAddressableToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :addressable, polymorphic: true, index: true
  end
end
