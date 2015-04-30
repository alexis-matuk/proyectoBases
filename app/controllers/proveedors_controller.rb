class ProveedorsController < ApplicationController
   before_action :set_proveedor, only: [:show, :edit, :update, :destroy]

  # GET /proveedors
  # GET /proveedors.json
  def index
    if params[:search]
      @proveedors = Proveedor.search(params[:search]).order("created_at DESC")
    else
      @proveedors = Proveedor.order("created_at DESC")
    end
  end

  # GET /proveedors/1
  # GET /proveedors/1.json
  def show
  end

  #GET /proveedors/agregar
  def agregar
    @proveedors = Proveedor.all
    @establecimiento = Establecimiento.find(params[:id])
  end

  # GET /proveedors/new
  def new
    @proveedor = Proveedor.new
  end 

  # GET /proveedors/1/edit
  def edit
  end


  # POST /proveedors
  # POST /proveedors.json
  def create
    @proveedor = Proveedor.new(proveedor_params)

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to @proveedor}
        format.json { render :show, status: :created, location: @proveedor }
      else
        format.html { render :new }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proveedors/1
  # PATCH/PUT /proveedors/1.json
  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html { redirect_to @proveedor}
        format.json { render :show, status: :ok, location: @proveedor }
      else
        format.html { render :edit }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proveedors/1
  # DELETE /proveedors/1.json
  def destroy
    EstablecimientoProveedor.where(:proveedor_id => @proveedor.id).destroy_all
    @proveedor.destroy
    respond_to do |format|
      format.html { redirect_to proveedors_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
       Rails.logger.debug("los parametros son #{params}")
     @proveedor = Proveedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proveedor_params
      params.require(:proveedor).permit(:nombre, :email, :telefono, :representante)
    end
end
