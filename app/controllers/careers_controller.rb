class CareersController < ApplicationController
  def index
    @careers = AdminCareer.all
    @careers = @careers.where(published: true)
    @admin_enquiry = AdminEnquiry.new
    @job_application = JobApplication.new
  end

  def show
    @careers = AdminCareer.all
    @careers = @careers.where(published: true)
    @career = AdminCareer.find(params[:id])
    @admin_enquiry = AdminEnquiry.new
    @job_application = JobApplication.new
  end
end
