class ContactsController < ApplicationController
  def index
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(1)
  end

  def surrey
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(2)
  end

  def vancouver
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(3)
  end

  def coquitlam
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(4)
  end

  def abbotsford
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(5)
  end

  def victoria
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(6)
  end

  def nanaimo
    @enquiry = AdminEnquiry.new
    @admin_enquiry = AdminEnquiry.new
    @location = Location.find_by_id(7)
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
