class ServicesController < ApplicationController
  before_action :logged_in_check, only: [:index_admin, :new, :edit]

  def index
    @admin_enquiry = AdminEnquiry.new
    @services = Service.all
    @services = @services.sort_by {|x| x.display_number}
    @admin_enquiry = AdminEnquiry.new
  end

  def index_admin
    @services = Service.all
    @admin_enquiry = AdminEnquiry.new
    # binding.pry
  end

  def show
    @service = Service.find(params[:id])
    @services = Service.all
    @services = @services.sort_by {|x| x.display_number}
    @admin_enquiry = AdminEnquiry.new
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_index_admin_path
    else
      render 'new'
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to service_index_admin_path
    else
      render 'edit'
    end

  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    redirect_to service_index_admin_path
  end


  def functional_evaluation
    # Done
  end

  def cost_of_future_care
  end

  def medical_legal_consultation
  end

  def community_rehabilitation
  end

  def physiotherapy
  end

  def functional_conditioning
  end

  def interdisciplinary_rehabilitation
  end

  def job_demands_analyses
  end

  def ergononmic_risk_factor_analyses
  end

  def clinical_counselling_services
  end

  def psychology_assessment
  end

  private

  def service_params
    params.require(:service).permit(:title,:content,:picture,:description,:display_number,:referral_type)
  end
end
