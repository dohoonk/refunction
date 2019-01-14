class OurTeamsController < ApplicationController
  def index
    @search = AdminTeam.search(params[:q])
    @teams = @search.result
  end

  def show
  end

  def office_administration
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 1)
  end

  def occupational_therapists
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 2)
  end

  def physiotherapists
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 3)
  end

  def kinesiologist
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 4)
  end

  def psychology
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 5)
  end

  def counsellors
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 6)
  end
end
