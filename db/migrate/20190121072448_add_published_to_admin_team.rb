class AddPublishedToAdminTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_teams, :published, :boolean
  end
end
