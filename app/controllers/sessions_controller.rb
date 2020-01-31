class SessionsController < ApplicationController
  def new
    
    if current_user.present?
      redirect_to home_path
    end
  end

  def create    
    email = params[:email]
    password = params[:password]
    user = User.find_by(email: email, password: password)
    if user.present?
      session[:user_id] = user.id
      redirect_to home_path
    else      
      @error = "Email/Contraseña Invalidos"
      redirect_to login_path
    end
    
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end

