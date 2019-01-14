class AddPreviewDescriptionToAdminCareer < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_careers, :preview_description, :string
  end
end
