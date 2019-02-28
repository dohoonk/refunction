class JobMailer < ApplicationMailer
    default :from => 'apply@refunction.ca'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(job_application)
    @job_application = job_application
    mail( :to => 'apply@refunction.ca',
    :subject => 'Job Application Received' )
  end

  def send_received_email(job_application)
    @job_application = job_application
    mail( :to => @job_application.email,
    :subject => 'Thank you for contacting us' )
  end
end
