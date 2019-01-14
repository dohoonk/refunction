class OurTeamsController < ApplicationController
  def index
    @teams = AdminTeam.all
  end

  def show
  end
end
