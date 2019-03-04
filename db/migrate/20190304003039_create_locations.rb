class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :message
      t.string :address
      t.string :phone
      t.string :fax
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
