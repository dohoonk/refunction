class CreateAdminReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_referrals do |t|
      t.string :category
      t.string :client_name
      t.string :name
      t.datetime :client_birthday
      t.string :company
      t.string :client_phone
      t.string :claim_number
      t.string :client_address
      t.string :address
      t.string :client_city
      t.string :phone
      t.string :client_postal_code
      t.string :email
      t.datetime :date_of_injury
      t.string :client_fax
      t.string :client_language
      t.string :realation_to_client
      t.string :concerns
      t.boolean :client_aware
      t.string :client_sex
      t.string :advertisement
      t.text :content
      t.timestamps
    end
  end
end
