class EstablecimientosController < ApplicationController
  before_action :set_establecimiento, only: [:show, :edit, :update, :destroy]

  # GET /establecimientos
  # GET /establecimientos.json
  def index
    @establecimientos = Establecimiento.all
  end

  # GET /establecimientos/1
  # GET /establecimientos/1.json
  def show
    @proveedores = Proveedor.select("proveedors.*").joins("JOIN establecimiento_proveedors ON establecimiento_proveedors.proveedor_id = proveedors.id").where("establecimiento_proveedors.establecimiento_id = ?",params[:id])
    @inspectores = Inspector.select("inspectors.*").joins("JOIN establecimiento_inspectors ON establecimiento_inspectors.inspector_id = inspectors.id").where("establecimiento_inspectors.establecimiento_id = ?",params[:id])
    @platillos = Platillo.select("platillos.*").joins("JOIN establecimiento_platillos ON establecimiento_platillos.platillo_id = platillos.id").where("establecimiento_platillos.establecimiento_id = ?",params[:id])
  end

  # GET /establecimientos/new
  def new
    @establecimiento = Establecimiento.new
  end

  # GET /establecimientos/1/edit
  def edit
  end

  # POST /establecimientos
  # POST /establecimientos.json
  def create
    @establecimiento = Establecimiento.new(establecimiento_params)

    respond_to do |format|
      if @establecimiento.save
        format.html { redirect_to @establecimiento}
        format.json { render :show, status: :created, location: @establecimiento }
      else
        format.html { render :new }
        format.json { render json: @establecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /establecimientos/1
  # PATCH/PUT /establecimientos/1.json
  def update
    respond_to do |format|
      if @establecimiento.update(establecimiento_params)
        format.html { redirect_to @establecimiento}
        format.json { render :show, status: :ok, location: @establecimiento }
      else
        format.html { render :edit }
        format.json { render json: @establecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /establecimientos/1
  # DELETE /establecimientos/1.json
  def destroy
    EstablecimientoPlatillo.where(:establecimiento_id => @establecimiento.id).delete_all
    EstablecimientoProveedor.where(:establecimiento_id => @establecimiento.id).delete_all
    EstablecimientoInspector.where(:establecimiento_id => @establecimiento.id).delete_all
    @establecimiento.destroy
    respond_to do |format|
      format.html { redirect_to establecimientos_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establecimiento
      @establecimiento = Establecimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establecimiento_params
      params.require(:establecimiento).permit(:direccion, :telefono, :codpost)
    end
end
