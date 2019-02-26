class CareersController < ApplicationController
  def index
    @careers = AdminCareer.all
    @admin_enquiry = AdminEnquiry.new
    @job_application = JobApplication.new
  end

  def show
    @careers = AdminCareer.all
    @career = AdminCareer.find(params[:id])
    @admin_enquiry = AdminEnquiry.new
    @job_application = JobApplication.new
  end
end
