class OurTeamsController < ApplicationController
  def index
    @search = AdminTeam.search(params[:q])
    @teams = @search.result
    @teams = @teams.sort_by {|x| x.first_name}
  end

  def show
  end

  def office_administration
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 1)
    @teams = @teams.sort_by {|x| x.first_name}
  end

  def occupational_therapists
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 2)
    @teams = @teams.sort_by {|x| x.first_name}
  end

  def physiotherapists
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 3)
    @teams = @teams.sort_by {|x| x.first_name}
  end

  def kinesiologist
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 4)
    @teams = @teams.sort_by {|x| x.first_name}
  end

  def psychology
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 5)
    @teams = @teams.sort_by {|x| x.first_name}
  end

  def counsellors
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 6)
    @teams = @teams.sort_by {|x| x.first_name}
  end
end
