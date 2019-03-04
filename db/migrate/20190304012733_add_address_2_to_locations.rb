class AddAddress2ToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :address_2, :string
  end
end
