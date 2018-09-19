class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :picture
      t.integer :display_number

      t.timestamps
    end
  end
end
