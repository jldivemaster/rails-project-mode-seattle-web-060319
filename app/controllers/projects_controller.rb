class ProjectsController < ApplicationController

  def home
    @user = User.new 
  end

  def show
    @project = Project.find(params[:id])
  end

  def index
    @projects = Project.all
  end
end
