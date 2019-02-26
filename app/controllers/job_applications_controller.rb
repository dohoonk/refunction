class JobApplicationsController < ApplicationController
  def create
    @job_application = JobApplication.new(job_application_params)
    redirect_to careers_path
  end

  private

  def job_application_params
    params.require(:job_application).permit(:position, :first_name, :last_name, :email, :phone, :message, :resume)
  end

end
