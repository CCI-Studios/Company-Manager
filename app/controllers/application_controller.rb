class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_menu

  def load_menu
    @menus = Menu.all
  end

  helper_method :current_user_session, :current_user

  def current_user_session
	  @current_user_session ||= UserSession.find
  end

  def current_user
    @current_user ||= current_user_session && current_user_session.record
  end

  def require_user
    unless current_user
      store_location
      redirect_to(login_path, :notice => 'You must be logged in to access this page')
      return false
    end
  end

  def require_no_user
    if current_user
      store_location
      redirect_to(root_url, :notice => 'You must be logged out to access this page')
      return false
    end
  end

  def store_location
    session[:return_to] = request.request_uri
  end

  def redirect_back_or_default(default)
    redirect_to(session[:return_to] || default)
    session[:return_to] = nil
  end
end
