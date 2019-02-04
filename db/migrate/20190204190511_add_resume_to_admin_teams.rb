class AddResumeToAdminTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_teams, :resume, :string
  end
end
