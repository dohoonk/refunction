class ReferralsController < ApplicationController
  def index
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new
  end

  def medlegal
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new

    # Figure out the inbound link to set up selected value on the form
    if request.referrer != nil
      @referral_page = request.referrer.byteslice(-1).to_i
    else 
      @referral_page = 9
    end

    case @referral_page
    when 9
      @referral_page = "1 Day Functional Capacity Evaluation (FCE)"
    when 8
      @referral_page = "1 Day Cognitive Functional Capactiy Evaluation (Cog FCE)"
    when 6
      @referral_page = "Cost of Future Care Assessment"
    when 2
      @referral_page = "File Review/Consult"
    else
      @referral_page = "1 Day Functional Capacity Evaluation (FCE)"
    end

  end

  def employer
    @referral = AdminReferral.new
    @admin_enquiry = AdminEnquiry.new

     # Figure out the inbound link to set up selected value on the form

     if request.referrer != nil
      @referral_page = request.referrer.byteslice(-2..-1)
    else 
      @referral_page = "/9"
    end
  
     case @referral_page
     when "/5"
      @referral_page = "Community Rehabilitation Services"
     when "/3"
      @referral_page = "Psychological Assessment"
     when "/9"
      @referral_page = "1 Day Functional Capacity Evaluation"
     when "18"
      @referral_page = "1 Day Cognitive Functional Capactiy Evaluation (Cog FCE)"
     when "/1"
      @referral_page = "Active Rehab Program"
     when "/8"
      @referral_page = "Ergonomic or Risk Factor Analyses"
     when "/2"
      @referral_page = "Brain Injury Assessment & Treatment"
     when "11"
      @referral_page = "Job Demands Analyses (JDA)"
     when "14"
      @referral_page = "Return to Work Support Services"
     when "17"
      @referral_page = "Psychiatric Independent Medical Examination"
     when "10"
      @referral_page = "Interdisciplinary Rehabilitation Assessments"
     else
      @referral_page = "1 Day Functional Capacity Evaluation (FCE)"
     end
  end
end
