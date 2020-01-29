class EmpleadosController < ApplicationController

  before_action :set_empleado, only: [:show, :edit, :update, :destroy]

  def index 
    @empleados = Empleado.all
  end

  def create
    @empleado = Empleado.new(empleados_params)    
    if @empleado.save
      #hola
      redirect_to empleados_path
    end
  end

  def show
  end

  def edit
    
  end

  def new
    @empleado = Empleado.new
  end

  def update
  end

  def destroy
  end

  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  def empleados_params
    params.require(:empleado).permit(:empleado_name, :empleado_rfc, :empleado_puesto)
  end

end
