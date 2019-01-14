class CreateAdminEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_enquiries do |t|
      t.string :email
      t.text :content
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps
    end
  end
end
