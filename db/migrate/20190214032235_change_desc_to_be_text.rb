class ChangeDescToBeText < ActiveRecord::Migration[5.1]
  def change
    change_column :services, :description, :text
  end
end
