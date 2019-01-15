class ServicesController < ApplicationController
  def index
    @admin_enquiry = AdminEnquiry.new
  end

  def show
    @service = Service.first
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
end
