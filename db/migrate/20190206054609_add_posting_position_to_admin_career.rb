class AddPostingPositionToAdminCareer < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_careers, :posting_position, :string
  end
end
