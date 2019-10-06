class ProjectsController < ApplicationController

  def home
    @user = User.new
    @user_trips = UserTrip.all.filter{|t| t.review? }
    @users = User.all
  end

  def show
    @project = Project.find(params[:id])
    @trip = UserTrip.find{ |t| t.project_id == @project.id }
    flash[:project_id] = @project.id
  end

  def index
    @projects = Project.all
  end
end
