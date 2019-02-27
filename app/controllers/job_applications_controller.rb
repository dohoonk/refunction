class JobApplicationsController < ApplicationController
  def index
    @job_applications = JobApplication.all
  end

  def create
    @job_application = JobApplication.new(job_application_params)
    if verify_recaptcha(model: @job_application) && @job_application.save
      redirect_to request.referrer
    else
      rendircet_to :back
    end
  end

  def show
    @job_application = JobApplication.find(params[:id])
  end

  def destroy
    @job_application = JobApplication.find(params[:id])
    @job_application.destroy
    redirect_to request.referrer
  end

  private

  def job_application_params
    params.require(:job_application).permit(:position, :first_name, :last_name, :email, :phone, :message, :resume)
  end

end
