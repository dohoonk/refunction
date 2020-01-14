class AddPublicUidToAdminReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_referrals, :public_uid, :string
    add_index  :admin_referrals, :public_uid
  end
end
