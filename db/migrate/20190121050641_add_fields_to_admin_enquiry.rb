class AddFieldsToAdminEnquiry < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_enquiries, :department, :string
  end
end
