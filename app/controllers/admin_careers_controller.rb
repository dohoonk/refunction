class AdminCareersController < ApplicationController
  def index
    @admin_careers_published = AdminCareer.where(published: true)
    @admin_careers_archived = AdminCareer.where(published: false)
  end

  def show
    @admin_career = AdminCareer.find(params[:id])
  end

  def new
    @admin_career = AdminCareer.new
  end

  def create
    @admin_career = AdminCareer.new(admin_career_params)
    if params[:commit] == "Save & Publish"
      @admin_career.published = true
    else
      @admin_career.published = false
    end
    if @admin_career.save
      redirect_to admin_careers_path
    else
      render 'new'
    end
  end

  def edit
    @admin_career = AdminCareer.find(params[:id])
  end

  def archive
    @admin_career = AdminCareer.find(params[:id])
    if @admin_career.published == true
      @admin_career.published = false
    else
      @admin_career.published = true
    end
    @admin_career.save
    redirect_to admin_careers_path
  end

  def update
    @admin_career = AdminCareer.find(params[:id])
    if @admin_career.update(admin_career_params)
      redirect_to admin_careers_path
    else
      render 'edit'
    end
  end

  def destroy
    @admin_career = AdminCareer.find(params[:id])
    @admin_career.destroy
    redirect_to admin_careers_path
  end

  private

  def admin_career_params
    params.require(:admin_career).permit(:title,:location,:description,:preview_description,:career,:posting_position,:type_of_job)
  end
end
