class ReferralsController < ApplicationController
  def index
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new
  end
end
