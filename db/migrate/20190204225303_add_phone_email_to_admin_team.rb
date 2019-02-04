class AddPhoneEmailToAdminTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_teams, :phone, :string
    add_column :admin_teams, :email, :string
  end
end
