class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]
  #before_action :require_login, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to @user
  end

  def edit
  end

  def update
    render :show
  end

  def show
  end



  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :bio, :skills)
  end

  def set_user
    @user = User.find(params[:id])
  end

  # def require_login
  #   return head(:forbidden) unless session.include? :user_id
  # end

end
