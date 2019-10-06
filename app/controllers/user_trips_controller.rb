class UserTripsController < ApplicationController

  before_action :set_trip, only: [:show, :destroy]
  before_action :authorize
  skip_before_action :verify_authenticity_token

  def new
    @user_trip = UserTrip.new
    flash.keep
  end

  def create
    @user_trip = UserTrip.create(:user_id => current_user.id, :project_id => flash[:project_id], :review => "")
    @project = @user_trip.project
    @project.less_one_spot

    flash[:notice] = "Congratulations! You have registered for this project!"
    redirect_to project_path(@project)
  end

  def edit
    @user_trip = UserTrip.find_by(:id => params[:id])
  end

  def update
    @user_trip = UserTrip.find_by(:id => params[:id])
    @user_trip.update(trip_params)
    @user_trip.save
    flash[:notice] = "Thank you for leaving a review."
    redirect_to user_path(current_user)
  end

  def show
  end

  def index
    @user_trips = UserTrip.all
  end

  def destroy
  end

  private

  def trip_params
    params.require(:user_trip).permit(:user_id, :project_id, :review, :rating)
  end

  def set_trip
    @user_trip = UserTrip.find(params[:id])
  end

  # def require_login
  #   return head(:forbidden) unless session.include? :user_id
  # end

end
