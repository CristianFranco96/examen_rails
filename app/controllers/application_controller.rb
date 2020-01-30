class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :log_in

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]    
  end  

  def log_ing
    unless current_user.present?
      redirect_to root_path
    end
  end

end
