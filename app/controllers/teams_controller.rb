class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def create
    @team = Team.create(team_params)
    if @team.save
      redirect_to teams_path
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update(team_params)
      redirect_to teams_path
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    if @team.destroy
      redirect_to teams_path
    else
      render :index
    end
  end

  def new
    @team = Team.new
  end

  private

  def team_params
    params.require(:team).permit(:name, :sponsors_ids)
  end
end
