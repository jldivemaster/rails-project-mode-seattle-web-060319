class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    # Look up the current user based on user_id in the session cookie:
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def authorize
    redirect_to login_path, alert: 'You must be logged in to access this page.' if current_user.nil?
  end
  
  # def logged_in?
  #   current_user.id != nil
  # end
  #
  # def require_logged_in
  #   return redirect_to(controller: 'sessions', action: 'new') unless logged_in?
  # end

end
