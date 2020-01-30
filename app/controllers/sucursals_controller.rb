class SucursalsController < ApplicationController
  before_action :set_sucursal, only: [:show, :edit, :update, :destroy]
  before_action :log_ing

  def index
    @sucursals = Sucursal.all
  end

  def create
    @sucursal = Sucursal.new(sucursals_params)
    @sucursal.user_id = current_user.id    

    if @sucursal.save
      redirect_to sucursals_path 
    else
      format.html { render :new }
      format.json { render json: @sucursal.errors, status: :unprocessable_entity }
    end
  end

  def show
  end
#vista
  def edit
    
  end

  def new
    @sucursal = Sucursal.new
  end

  def update
    @sucursal.update(sucursals_params)
    redirect_to home_path
  end

  def destroy
    @sucursal.destroy    
    redirect_to sucursals_path
  end

  def set_sucursal
    @sucursal = Sucursal.find(params[:id])
  end

  def sucursals_params
    params.require(:sucursal).permit(:sucursal_name, :sucursal_add, :zip_code, :user_id)
  end

  
end
