class CareersController < ApplicationController
  def index
    @careers = AdminCareer.all
  end

  def show
    # @career = AdminCareer.find(params[:id])
  end
end
