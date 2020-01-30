class EmpleadosController < ApplicationController
  before_action :set_empleado, only: [:show, :edit, :update, :destroy]
  before_action :log_ing

  def index     
    @empleados = Empleado.all
  end

  def create 
    @empleado = Empleado.new(empleados_params)
    @empleado.sucursal_id = params[:sucursal_id]   
    if @empleado.save
      redirect_to empleados_path
    end
  end

  def show
  end

  def edit
    
  end

  def new
    @empleado = Empleado.new
    @sucursales = Sucursal.where(user_id: current_user.id) 
  end

  def update
    @empleado = Empleado.update(empleados_params)
    redirect_to empleados_path
  end

  def destroy
    @empleado.destroy
    redirect_to empleados_path
  end

  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  def empleados_params
    params.require(:empleado).permit(:empleado_name, :empleado_rfc, :empleado_puesto, :id_sucursal)
  end

end
