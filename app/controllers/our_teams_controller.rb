class OurTeamsController < ApplicationController
  def index
    @search = AdminTeam.search(params[:q])
    @teams = @search.result
    @teams = @teams.where(published: true)
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
end
