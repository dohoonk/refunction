class ReferralsController < ApplicationController
  def index
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new
  end

  def medlegal
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new
  end

  def employer
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new
  end
end
