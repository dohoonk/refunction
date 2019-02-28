class EnquiryNotifierMailer < ApplicationMailer
  default :from => 'info@refunction.ca'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(enquiry)
    @enquiry = enquiry
    mail( :to => 'info@refunction.ca',
    :subject => 'Customer Enquiry' )
  end

  def send_received_email(enquiry)
    @enquiry = enquiry
    mail( :to => @enquiry.email,
    :subject => 'Thank you for contacting us' )
  end
end
