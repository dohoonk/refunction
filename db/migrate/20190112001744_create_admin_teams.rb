class CreateAdminTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_teams do |t|
      t.string :first_name
      t.string :last_name
      t.string :title
      t.string :occupation
      t.text :bio
      t.boolean :archived

      t.timestamps
    end
  end
end
