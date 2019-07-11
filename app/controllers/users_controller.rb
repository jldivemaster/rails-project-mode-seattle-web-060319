class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]
  before_action :authorize, except: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.username.downcase!

    if @user.save
      # If user saves in the db successfully:
      flash[:notice] = "Account created successfully!"

  #do_login(username, password)
      #user = User.find_by(username: params[:login][:username].downcase)

      # Verify user exists in db and run has_secure_password's .authenticate()
      # method to see if the password submitted on the login form was correct:
      #if user && user.authenticate(params[:login][:password])
        # Save the user.id in that user's session cookie:
        session[:user_id] = @user.id.to_s
        redirect_to @user

  #redirect_to root_path
    else
      # If user fails model validation - probably a bad password or duplicate email:
      flash.now.alert = "Oops, couldn't create account. Please make sure you are using a valid username and password and try again."
      render :new
    end

  end

  def new_profile
    
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
    params.require(:user).permit(:name, :age, :bio, :skills, :username, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def do_login(username,password)
    #do the actual login processing
    #can even render or redirect here if it's common to both setup and login
  end


end
