class AdminReferralsController < ApplicationController
  before_action :logged_in_check, except: [:create]
  
  def index
    @referrals = AdminReferral.all
  end

  def show
    @referral = AdminReferral.find(params[:id])
  end

  def create
    # binding.pry
    @referral = AdminReferral.new(admin_referral_params)
    if verify_recaptcha(model: @referral) && @referral.save
      ReferralMailer.send_signup_email(@referral).deliver
      ReferralMailer.send_received_email(@referral).deliver
      flash[:success] = "Thank you for we will contact you shortly"
      redirect_to referrals_path
    else
      flash[:danger] = "Plese fill the required fields!"
      redirect_to referrals_path
    end
  end

  def destroy
    @referral = AdminReferral.find(params[:id])
    @referral.destroy
    redirect_to admin_referrals_path
  end

  private

  def admin_referral_params
    params.require(:admin_referral).permit(:category, :client_name, :name, :client_birthday, :company, :client_phone, :claim_number, :client_address, :address, :client_city, :phone, :client_postal_code, :email, :date_of_injury, :client_fax, :client_language, :realation_to_client, :concerns, :client_aware, :advertisement, :content, :client_sex_other, :client_sex, :client_advertisement_other)
  end


end
