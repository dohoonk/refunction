class EnquiryNotifierMailer < ApplicationMailer
  default :from => 'tonykim.tech@gmail.com'

  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(enquiry)
    @enquiry = enquiry
    mail( :to => 'tonykim.tech@gmail.com',
    :subject => 'Customer Enquiry' )
  end

  def send_received_email(enquiry)
    @enquiry = enquiry
    mail( :to => @enquiry.email,
    :subject => 'Thank you for contacting us' )
  end
end
