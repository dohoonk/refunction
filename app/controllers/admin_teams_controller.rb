class AdminTeamsController < ApplicationController
  def index
    @search = AdminTeam.search(params[:q])
    @teams = @search.result
  end

  def show
    @search = AdminTeam.search(params[:q])
    @admin_team = AdminTeam.find(params[:id])
  end

  def new
    @admin_team = AdminTeam.new
  end

  def create
    @admin_team = AdminTeam.new(admin_team_params)
    if @admin_team.save
      redirect_to admin_teams_path
    else
      render 'new'
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def admin_team_params
    params.require(:admin_team).permit(:first_name, :last_name, :title, :occupation, :bio, :archived, :job_category_id, :image)
  end
end
