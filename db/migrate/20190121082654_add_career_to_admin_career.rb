class AddCareerToAdminCareer < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_careers, :career, :string
  end
end
