class AddCityToAdminReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_referrals, :city, :string
  end
end
