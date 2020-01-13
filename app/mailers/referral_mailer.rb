class ReferralMailer < ApplicationMailer
  default :from => 'referrals@refunction.ca'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  # info@refunction.ca,referrals@refunction.ca,referral@refunction.ca
  def send_signup_email(referral)
    @referral = referral
    mail( :to => 'info@refunction.ca,referrals@refunction.ca,referral@refunction.ca',
    :subject => 'Referral Received' )
  end

  def send_received_email(referral)
    @referral = referral
    mail( :to => @referral.rs_email,
    :subject => 'Thank you for contacting us' )
  end
end
