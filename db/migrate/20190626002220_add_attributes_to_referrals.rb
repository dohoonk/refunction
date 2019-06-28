class AddAttributesToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_referrals, :rs_office_address, :string
    add_column :admin_referrals, :rs_name, :string
    add_column :admin_referrals, :rs_phone, :string
    add_column :admin_referrals, :rs_fax, :string
    add_column :admin_referrals, :rs_email, :string
    add_column :admin_referrals, :rs_represents, :string
    add_column :admin_referrals, :rs_city, :string
    add_column :admin_referrals, :rs_postal_code, :string
    add_column :admin_referrals, :rs_assistant_name, :string
    add_column :admin_referrals, :rs_assistant_phone, :string
    add_column :admin_referrals, :rs_assistant_email, :string
    # add_column :admin_referrals, :client_name, :string
    # add_column :admin_referrals, :client_phone, :string
    # add_column :admin_referrals, :client_email, :string
    add_column :admin_referrals, :client_id, :string
    add_column :admin_referrals, :client_file_number, :string
    add_column :admin_referrals, :client_date_of_birth, :datetime
    add_column :admin_referrals, :client_report_deadline, :datetime
    # add_column :admin_referrals, :client_address, :string
    add_column :admin_referrals, :client_trial_date, :datetime
    # add_column :admin_referrals, :client_city, :string
    add_column :admin_referrals, :client_trial_duration_in_days, :string
    # add_column :admin_referrals, :client_postal_code, :string
    add_column :admin_referrals, :client_date_of_injury, :datetime
    add_column :admin_referrals, :client_gender, :string
    add_column :admin_referrals, :client_interpreter_required, :string
    add_column :admin_referrals, :client_language_required, :string
    add_column :admin_referrals, :referral_form_type, :string
    add_column :admin_referrals, :rs_office_name, :string
    add_column :admin_referrals, :client_rebuttal_needed, :string
  end
end
