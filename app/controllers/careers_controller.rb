class CareersController < ApplicationController
  def index
    @careers = AdminCareer.all
  end

  def show
    @careers = AdminCareer.all
    @career = AdminCareer.find(params[:id])
  end
end
