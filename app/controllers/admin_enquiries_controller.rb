class AdminEnquiriesController < ApplicationController
  def index
    @enquiries = AdminEnquiry.all
  end

  def show
    @enquiry = AdminEnquiry.find(params[:id])
  end

  def create
    @enquiry = AdminEnquiry.new(admin_enquiry_params)
    if @enquiry.save
      EnquiryNotifierMailer.send_signup_email(@enquiry).deliver
      flash[:notice] = 'Thank you for contacting us!'
      redirect_back(fallback_location: root_path)
    else
      render 'contacts/index'
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
