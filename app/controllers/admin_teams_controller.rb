class AdminTeamsController < ApplicationController
  before_action :logged_in_check, only: [:index_original, :new, :archive, :edit]

  def index
    @search = AdminTeam.search(params[:q])
    @teams = @search.result
    @teams = @teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def index_original
    @search = AdminTeam.search(params[:q])
    @admin_teams = @search.result
    @published_admin_teams = AdminTeam.where(published: true)
    @published_admin_teams = @published_admin_teams.sort_by {|x| x.first_name}
    @archived_admin_teams = AdminTeam.where(published: false)
    @archived_admin_teams = @archived_admin_teams.sort_by {|x| x.first_name}
    @admin_enquiry = AdminEnquiry.new
  end

  def show
    @search = AdminTeam.search(params[:q])
    @admin_team = AdminTeam.find(params[:id])
    @admin_enquiry = AdminEnquiry.new
  end

  def new
    @admin_team = AdminTeam.new
  end

  def create
    @admin_team = AdminTeam.new(admin_team_params)

    if params[:commit] == "Save & Publish"
      @admin_team.published = true
    else
      @admin_team.published = false
    end

    if @admin_team.save
      redirect_to index_original_path
    else
      render 'new'
    end

  end

  def archive
    @admin_team = AdminTeam.find(params[:id])
    if @admin_team.published == true
      @admin_team.published = false
    else
      @admin_team.published = true
    end
    @admin_team.save
    redirect_to index_original_path



  end


  def edit
    @admin_team = AdminTeam.find(params[:id])
  end

  def update
    @admin_team = AdminTeam.find(params[:id])
    @admin_team.update(admin_team_params)
    redirect_to index_original_path
  end

  def destroy
    @admin_team = AdminTeam.find(params[:id])
    @admin_team.destroy
    redirect_to index_original_path
  end

  private

  def admin_team_params
    params.require(:admin_team).permit(:first_name, :last_name, :title, :occupation, :bio, :archived, :job_category_id, :image, :resume, :email, :phone, :second_title)
  end
end
