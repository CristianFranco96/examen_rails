class HomeController < ApplicationController
  def index             
    @user = current_user
    if @user.nil?
      redirect_to root_path
    else
      @sucursales = Sucursal.where user_id: current_user.id
    end    
  end

  def pdf_convert 
    @sucursales = Sucursal.where user_id: current_user.id
    respond_to do |format|      
      format.html
      format.pdf do
        render pdf: "Sucursales_Actuales",
        template: "home/pdf_convert.pdf.erb",
        locals: {sucursales: @sucursales}
      end
    end
  end

end