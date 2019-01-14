class AddReferencesToAdminTeam < ActiveRecord::Migration[5.1]
  def change
    add_reference :admin_teams, :job_category, foreign_key: true
  end
end
