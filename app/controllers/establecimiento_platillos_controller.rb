class EstablecimientoPlatillosController < ApplicationController
  before_action :set_establecimiento_platillo, only: [:show, :edit, :update, :destroy]

  # GET /establecimiento_platillos
  # GET /establecimiento_platillos.json
  def index
    @establecimiento_platillos = EstablecimientoPlatillo.all
  end

  # GET /establecimiento_platillos/1
  # GET /establecimiento_platillos/1.json
  def show
  end

  # GET /establecimiento_platillos/new
  def new
    @establecimiento_platillo = EstablecimientoPlatillo.new
  end

  # GET /establecimiento_platillos/1/edit
  def edit
  end

   def llenar
    @existe = EstablecimientoPlatillo.select("EstablecimientoPlatillo.*").where("establecimiento_id = ?", params[:ide]).where("platillo_id = ?", params[:id])
    @establecimiento = Establecimiento.find(params[:ide])
    if @existe.empty?
      @establecimiento_proveedor = EstablecimientoPlatillo.new(establecimiento_id: params[:ide], platillo_id: params[:id], introduccion: Time.now)
      @establecimiento_proveedor.save
    else 
      redirect_to agregar_platillo_path(id: @establecimiento), :flash => { :error => "Ese platillo ya está asociado al establecimiento" }
    end
  end

  def vaciar
    EstablecimientoPlatillo.where(:platillo_id => params[:id]).delete_all
  end

  # POST /establecimiento_platillos
  # POST /establecimiento_platillos.json
  def create
    @establecimiento_platillo = EstablecimientoPlatillo.new(establecimiento_platillo_params)

    respond_to do |format|
      if @establecimiento_platillo.save
        format.html { redirect_to @establecimiento_platillo}
        format.json { render :show, status: :created, location: @establecimiento_platillo }
      else
        format.html { render :new }
        format.json { render json: @establecimiento_platillo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /establecimiento_platillos/1
  # PATCH/PUT /establecimiento_platillos/1.json
  def update
    respond_to do |format|
      if @establecimiento_platillo.update(establecimiento_platillo_params)
        format.html { redirect_to @establecimiento_platillo}
        format.json { render :show, status: :ok, location: @establecimiento_platillo }
      else
        format.html { render :edit }
        format.json { render json: @establecimiento_platillo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /establecimiento_platillos/1
  # DELETE /establecimiento_platillos/1.json
  def destroy
    @establecimiento_platillo.destroy
    respond_to do |format|
      format.html { redirect_to establecimiento_platillos_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establecimiento_platillo
      @establecimiento_platillo = EstablecimientoPlatillo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establecimiento_platillo_params
      params.require(:establecimiento_platillo).permit(:introduccion)
    end
end
