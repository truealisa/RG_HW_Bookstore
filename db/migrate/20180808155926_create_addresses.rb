class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :type
      t.string :local_address
      t.string :zipcode
      t.string :city
      t.string :phone
      t.string :country

      t.timestamps
    end
  end
end
