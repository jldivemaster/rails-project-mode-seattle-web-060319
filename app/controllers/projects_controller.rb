class ProjectsController < ApplicationController

  def home
    @user = User.new
    @user_trips = UserTrip.all
    @users = User.all
  end

  def show
    @project = Project.find(params[:id])
    flash[:project_id] = @project.id
  end

  def index
    @projects = Project.all
  end
end
