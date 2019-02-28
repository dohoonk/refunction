class AddAdToAdminReferral < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_referrals, :client_sex_other, :string
    add_column :admin_referrals, :client_advertisement_other, :string
  end
end
