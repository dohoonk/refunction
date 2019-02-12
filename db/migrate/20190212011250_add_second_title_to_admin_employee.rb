class AddSecondTitleToAdminEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_teams, :second_title, :string
  end
end
