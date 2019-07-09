class UserTripsController < ApplicationController

  before_action: set_trip, only [:edit, :update, :show, :destroy]

  def new
    @user_trip = UserTrip.new
  end

  def create
    @user_trip = UserTrip.new(trip_params)
    redirect_to @user_trip
  end

  def edit
  end

  def update
    render :show
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
    params.require(:user_trip).permit(:review)
  end

  def set_trip
    @user_trip = UserTrip.find(params[:id])
  end
  
end
