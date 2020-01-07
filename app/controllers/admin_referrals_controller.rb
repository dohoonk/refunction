class AdminReferralsController < ApplicationController
  before_action :logged_in_check, except: [:create]

  def index
    @referrals = AdminReferral.all.order('created_at desc')
  end

  def show
    @referral = AdminReferral.find_param(params[:id])
  end

  def create
    # binding.pry
    @referral = AdminReferral.new(admin_referral_params)


    if @referral.save
    # if verify_recaptcha(model: @referral) && @referral.save
      ReferralMailer.send_signup_email(@referral).deliver
      ReferralMailer.send_received_email(@referral).deliver
      flash[:success] = "Thank you for your referral. We will contact you shortly"
      redirect_to referrals_path
    else

      flash[:danger] = "Plese fill the required fields!"
      redirect_to referrals_path
    end
  end

  def destroy
    @referral = AdminReferral.find_param(params[:id])
    @referral.destroy
    redirect_to admin_referrals_path
  end

  private

  def admin_referral_params
    params.require(:admin_referral).permit(:category, :client_name, :name, :client_birthday, :company, :client_phone, :claim_number, :client_address, :address, :client_city, :phone, :client_postal_code, :email, :date_of_injury, :client_fax, :client_language, :realation_to_client, :concerns, :client_aware, :advertisement, :content, :client_sex_other, :client_sex, :client_advertisement_other, :client_email, :referral_source_name, :assistant_phone, :assistant_email, :city, :rs_office_address, :rs_name, :rs_phone, :rs_fax, :rs_email, :rs_represents, :rs_city, :rs_postal_code, :rs_assistant_name, :rs_assistant_phone, :rs_assistant_email, :client_id, :client_file_number, :client_date_of_birth, :client_report_deadline, :client_trial_date, :client_trial_duration_in_days, :client_date_of_injury, :client_gender, :client_interpreter_required, :client_language_required, :referral_form_type, :rs_office_name, :client_rebuttal_needed, :client_sub_file_number)
  end


end
