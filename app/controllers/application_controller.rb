class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login_user!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
    redirect_to bands_url
  end

  def logout_user!
    current_user.reset_session_token!
    session[:session_token] = nil
    redirect_to new_session_url
  end

  def logged_in?
    current_user ? true : false
  end

  def ensure_no_current_user
    redirect_to user_url(current_user) if logged_in?
  end

  def ensure_current_user
    redirect_to new_session_url unless current_user
  end

  def ensure_exists(class_name)
    unless class_name.constantize.exists?(id: params[:id])
      flash[:errors] = ["Could not find that #{class_name.downcase}"]
      redirect_to bands_url
    end
  end
end
