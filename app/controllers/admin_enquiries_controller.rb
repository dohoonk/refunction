class AdminEnquiriesController < ApplicationController
  before_action :logged_in_check
  
  def index
    @enquiries = AdminEnquiry.all
  end

  def show
    @enquiry = AdminEnquiry.find(params[:id])
  end

  def create
    @enquiry = AdminEnquiry.new(admin_enquiry_params)
    if verify_recaptcha(model: @enquiry) && @enquiry.save
      EnquiryNotifierMailer.send_signup_email(@enquiry).deliver
      EnquiryNotifierMailer.send_received_email(@enquiry).deliver
      flash[:notice] = 'Thank you for contacting us!'
      # redirect_back(fallback_location: root_path)
      redirect_to request.referrer
    else
      redirect_to request.referrer
    end
  end

  def destroy
    @enquiry = AdminEnquiry.find(params[:id])
    @enquiry.destroy
    redirect_to admin_enquiries_path
  end

  private

  def admin_enquiry_params
    params.require(:admin_enquiry).permit(:first_name,:last_name,:email,:content,:phone,:department)
  end

end
