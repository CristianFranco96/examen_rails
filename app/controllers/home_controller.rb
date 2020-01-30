class HomeController < ApplicationController
  def index             
    @user = current_user
    if @user.nil?
      redirect_to root_path
    else
      @sucursales = Sucursal.where user_id: current_user.id
    end
  end
end