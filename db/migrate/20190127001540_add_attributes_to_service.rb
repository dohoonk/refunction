class AddAttributesToService < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :content, :text
  end
end
