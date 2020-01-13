class AddSubFileNameToAdminReferral < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_referrals, :client_sub_file_number, :string
  end
end
