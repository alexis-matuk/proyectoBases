class PlatillosController < ApplicationController
  before_action :set_platillo, only: [:show, :edit, :update, :destroy]

  # GET /platillos
  # GET /platillos.json
  def index
   if params[:search]
      @platillos = Platillo.search(params[:search]).order("created_at DESC")
    else
      @platillos = Platillo.order("created_at DESC")
    end
  end

  # GET /platillos/1
  # GET /platillos/1.json
  def show
     @ingredientes = Ingrediente.select("ingredientes.*").joins("JOIN ingrediente_platillos ON ingrediente_platillos.ingrediente_id = ingredientes.id").where("ingrediente_platillos.platillo_id = ?",params[:id])
  end

 def agregar
    @platillos = Platillo.all
    @establecimiento = Establecimiento.find(params[:id])
  end


  # GET /platillos/new
  def new
    @platillo = Platillo.new
    # @@establecimiento = Establecimiento.find(params[:id])
  end

  # GET /platillos/1/edit
  def edit
  end

  # POST /platillos
  # POST /platillos.json
  def create
    @platillo = Platillo.new(platillo_params.except(:establecimiento_id))
    respond_to do |format|
      if @platillo.save
        format.html { redirect_to @platillo}
        format.json { render :show, status: :created, location: @platillo }
      else
        format.html { render :new }
        format.json { render json: @platillo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /platillos/1
  # PATCH/PUT /platillos/1.json
  def update
    respond_to do |format|
      if @platillo.update(platillo_params)
        format.html { redirect_to @platillo}
        format.json { render :show, status: :ok, location: @platillo }
      else
        format.html { render :edit }
        format.json { render json: @platillo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /platillos/1
  # DELETE /platillos/1.json
  def destroy
    EstablecimientoPlatillo.where(:platillo_id => @platillo.id).destroy_all
    @platillo.destroy
    respond_to do |format|
      format.html { redirect_to (platillos_url) and return} 
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_platillo
      @platillo = Platillo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def platillo_params
      params.require(:platillo).permit(:nombre, :descripcion, :precio,:receta, :establecimiento_id)
    end
end
