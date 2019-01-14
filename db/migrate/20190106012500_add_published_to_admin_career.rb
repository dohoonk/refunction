class AddPublishedToAdminCareer < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_careers, :published, :boolean
  end
end
