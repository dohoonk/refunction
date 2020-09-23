class OurTeamsController < ApplicationController
  MEMORIAL_JOB_CATEGORY_ID = JobCategory.find_by(title:'Memorial').id

  def index
    @search = AdminTeam.search(params[:q])
    @teams = @search.result
    @memorial_teams = @teams.where(published: true).where(job_category_id: MEMORIAL_JOB_CATEGORY_ID)
    @memorial_teams = @memorial_teams.sort_by {|x| x.first_name}
    @teams = @teams.where(published: true).where.not(job_category_id: MEMORIAL_JOB_CATEGORY_ID)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def show
  end

  def office_administration
    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 1)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def occupational_therapists
      @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 2)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def physiotherapists
    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 3)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def kinesiologist
    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 4)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def psychology
    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 5)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def counsellors
    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 6)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def psychiatrist
    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: 7)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def memorial

    @search = AdminTeam.search(params[:q])
    @teams = AdminTeam.where(job_category_id: MEMORIAL_JOB_CATEGORY_ID)
    @teams = @teams.where(published: true)
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end
end
