class ReferralMailer < ApplicationMailer
  default :from => 'referrals@refunction.ca'
  # send a signup email to the user, pass in the user object that   contains the user's email address
  def send_signup_email(referral)
    @referral = referral
    # mail( :to => 'info@refunction.ca,referrals@refunction.ca,referral@refunction.ca',
    # :subject => 'Referral Received' )
    subject = "Referral Received"

    if @referral.referral_form_type == 'medlegal'
      subject += " Claim #: #{@referral.client_file_number}" if @referral.client_file_number.present?

      subject += " File #: #{@referral.client_sub_file_number}" if @referral.client_sub_file_number.present?
    elsif @referral.referral_form_type == 'employer'
      subject += " Policy #: #{@referral.client_file_number}" if @referral.client_file_number.present?

      subject += " Client ID #: #{@referral.client_sub_file_number}" if @referral.client_sub_file_number.present?
    end

    mail( :to => 'peter.h.9002@gmail.com',
    :subject => subject )
  end

  def send_received_email(referral)
    @referral = referral
    subject = 'Thank you for contacting us'

    if @referral.referral_form_type == 'medlegal'
      subject += " Claim #: #{@referral.client_file_number}" if @referral.client_file_number.present?

      subject += " File #: #{@referral.client_sub_file_number}" if @referral.client_sub_file_number.present?
    elsif @referral.referral_form_type == 'employer'
      subject += " Policy #: #{@referral.client_file_number}" if @referral.client_file_number.present?

      subject += " Client ID #: #{@referral.client_sub_file_number}" if @referral.client_sub_file_number.present?
    end
    mail( :to => 'peter.h.9002@gmail.com',
    :subject => subject )
    # mail( :to => @referral.rs_email,
    # :subject => 'Thank you for contacting us' )
  end

end
