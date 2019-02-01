class ServicesController < ApplicationController
  def index
    @admin_enquiry = AdminEnquiry.new
  end

  def index_admin
    @services = Service.all
  end

  def show
    @service = Service.first
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save

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

    else
      render 'edit'
    end

  end

  def destroy
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
    params.require(:service).permit(:title,:content,:picture)
  end
end
