class EmpleadosController < ApplicationController
  before_action :log_in
  before_action :set_empleado, only: [:edit, :update, :destroy]

  def create 
    @empleado = Empleado.new(empleados_params)
    @empleado.sucursal_id = params[:sucursal_id]   
    if @empleado.save
      redirect_to sucursals_path
    end
  end

  def edit
    
  end

  def new
    @empleado = Empleado.new
    @sucursales = Sucursal.where(user_id: current_user.id) 
  end

  def update
    @empleado = Empleado.update(empleados_params)
    redirect_to sucursals_path
  end

  def destroy
    @empleado.destroy
    redirect_to sucursals_path
  end

  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  def empleados_params
    params.require(:empleado).permit(:empleado_name, :empleado_rfc, :empleado_puesto, :id_sucursal)
  end

end
