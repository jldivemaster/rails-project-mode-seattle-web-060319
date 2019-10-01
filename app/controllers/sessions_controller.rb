class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:login][:username].downcase)

    # Verify user exists in db and run has_secure_password's .authenticate()
    # method to see if the password submitted on the login form was correct:
    if user && user.authenticate(params[:login][:password])
      # Save the user.id in that user's session cookie:
      session[:user_id] = user.id.to_s
      flash[:notice] = "Successfully logged in!"
      redirect_to user_path(user)
    else
      # if email or password incorrect, re-render login page:
      flash.now.alert = "Incorrect username or password, try again."
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "You are logged out."
  end


end
