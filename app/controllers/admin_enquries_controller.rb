class AdminEnquriesController < ApplicationController
  def index

  end

  def show
  end

  def create

  end

  private

  def admin_enquiry_params
    params.require(:admin_enquiry).permit(:first_name,:last_name,:email,:content,:phone)
  end

end
