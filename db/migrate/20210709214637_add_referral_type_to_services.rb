class AddReferralTypeToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :referral_type, :string
  end
end
