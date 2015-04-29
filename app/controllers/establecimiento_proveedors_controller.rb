class EstablecimientoProveedorsController < ApplicationController
  before_action :set_establecimiento_proveedor, only: [:show, :edit, :update, :destroy]

  # GET /establecimiento_proveedors
  # GET /establecimiento_proveedors.json
  def index
    @establecimiento_proveedors = EstablecimientoProveedor.all
  end

  # GET /establecimiento_proveedors/1
  # GET /establecimiento_proveedors/1.json
  def show
  end

  # GET /establecimiento_proveedors/new
  def new
    @establecimiento_proveedor = EstablecimientoProveedor.new
  end

  # GET /establecimiento_proveedors/1/edit
  def edit
  end

  # POST /establecimiento_proveedors
  # POST /establecimiento_proveedors.json
  def create
    @establecimiento_proveedor = EstablecimientoProveedor.new(establecimiento_proveedor_params)

    respond_to do |format|
      if @establecimiento_proveedor.save
        format.html { redirect_to @establecimiento_proveedor}
        format.json { render :show, status: :created, location: @establecimiento_proveedor }
      else
        format.html { render :new }
        format.json { render json: @establecimiento_proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /establecimiento_proveedors/1
  # PATCH/PUT /establecimiento_proveedors/1.json
  def update
    respond_to do |format|
      if @establecimiento_proveedor.update(establecimiento_proveedor_params)
        format.html { redirect_to @establecimiento_proveedor}
        format.json { render :show, status: :ok, location: @establecimiento_proveedor }
      else
        format.html { render :edit }
        format.json { render json: @establecimiento_proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /establecimiento_proveedors/1
  # DELETE /establecimiento_proveedors/1.json
  def destroy
    @establecimiento_proveedor.destroy
    respond_to do |format|
      format.html { redirect_to establecimiento_proveedors_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establecimiento_proveedor
      @establecimiento_proveedor = EstablecimientoProveedor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establecimiento_proveedor_params
      params[:establecimiento_proveedor]
    end
end
