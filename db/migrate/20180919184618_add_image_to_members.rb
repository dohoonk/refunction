class AddImageToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :image, :string
  end
end
