class ContactsController < ApplicationController
  def index
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def surrey
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def vancouver
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def coquitlam
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def abbotsford
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def victoria
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def nanaimo
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
  end

  def create
    @enquiry = AdminEnquiry.new(admin_enquiry_params)
    if @enquiry.save
      redirect_to contacts_path
    else
      render 'index'
    end
  end

  private

  def admin_enquiry_params
    params.require(:admin_enquiry).permit(:first_name,:last_name,:email,:content,:phone,:department)
  end

end
