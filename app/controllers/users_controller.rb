

class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]
  before_action :authorize, except: [:new, :create, :index]

  def new
    @user = User.new
  end

  def index
  end

  def create
    @user = User.new(user_params)
    @user.avatar = Faker::Avatar.image
    @user.username.downcase!

    if @user.save
      flash[:notice] = "Account created successfully!  Click Edit Profile below to set up your profile details."
      session[:user_id] = @user.id.to_s
      redirect_to @user

    else
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid username and password and try again."
      render :new
    end

  end

  def edit

  end

  def update
    @user = User.update(user_params)
    redirect_to user_path(current_user)
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :bio, :skills, :username, :password, :password_confirmation, :avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
