class AddEmailConfirmationToAdminReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_referrals, :email_confirmation_address, :string
  end
end
