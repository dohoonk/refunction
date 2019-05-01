class ReferralMailer < ApplicationMailer
default :from => 'info@refunction.ca'
# send a signup email to the user, pass in the user object that   contains the user's email address
def send_signup_email(referral)
  @referral = referral
  mail( :to => 'info@refunction.ca',
  :subject => 'Referral Received' )
end

def send_received_email(referral)
  @referral = referral
  mail( :to => @referral.email,
  :subject => 'Thank you for contacting us' )
end
end
