class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_sucursal
  helper_method :log_in
  helper_method :any_sucursal

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]    
  end  

  def log_in
    unless current_user.present?
      redirect_to root_path
    end
  end

  def any_sucursal
    Sucursal.where(user_id: current_user).count 
  end

end
