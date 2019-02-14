class AddDescriptionToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :description, :string
  end
end
