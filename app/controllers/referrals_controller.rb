class ReferralsController < ApplicationController
  def index
    @referral = AdminReferral.new
  end
end
