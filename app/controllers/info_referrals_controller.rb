class InfoReferralsController < ApplicationController
    def show

        @referral = AdminReferral.find(params[:id])
    end
end
