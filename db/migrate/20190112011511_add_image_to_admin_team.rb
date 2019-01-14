class AddImageToAdminTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_teams, :image, :string
  end
end
