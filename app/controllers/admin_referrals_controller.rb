class AdminReferralsController < ApplicationController
  def index
    @referrals = AdminReferral.all
  end

  def show
    @referral = AdminReferral.find(params[:id])
  end

  def create
    @referral = AdminReferral.new(admin_referral_params)
    if @referral.save
      redirect_to referrals_path
    else
      render 'referrals/index'
    end
  end

  def destroy
    @referral = AdminReferral.find(params[:id])
    @referral.destroy
    redirect_to admin_referrals_path
  end

  private

  def admin_referral_params
    params.require(:admin_referral).permit(:category, :client_name, :name, :client_birthday, :company, :client_phone, :claim_number, :client_address, :address, :client_city, :phone, :client_postal_code, :email, :date_of_injury, :client_fax, :client_language, :realation_to_client, :concerns, :client_aware, :client_sex, :advertisement, :content )
  end


end
