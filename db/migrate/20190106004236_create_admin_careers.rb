class CreateAdminCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_careers do |t|
      t.string :title
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
