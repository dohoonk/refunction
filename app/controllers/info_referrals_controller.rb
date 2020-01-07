class InfoReferralsController < ApplicationController
    def show

        @referral = AdminReferral.find_param(params[:id])
    end
end
