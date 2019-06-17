class AddAttribtesToReferral < ActiveRecord::Migration[5.1]
  def change
    # add_column :admin_referrals, :client_city, :string
    add_column :admin_referrals, :client_email, :string
    add_column :admin_referrals, :referral_source_name, :string
    add_column :admin_referrals, :assistant_phone, :string
    add_column :admin_referrals, :assistant_email, :string
  end
end
