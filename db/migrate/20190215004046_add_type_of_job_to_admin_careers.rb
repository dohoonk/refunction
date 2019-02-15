class AddTypeOfJobToAdminCareers < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_careers, :type_of_job, :string
  end
end
