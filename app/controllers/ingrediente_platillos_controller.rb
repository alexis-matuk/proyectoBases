class IngredientePlatillosController < ApplicationController
  before_action :set_ingrediente_platillo, only: [:show, :edit, :update, :destroy]

  # GET /ingrediente_platillos
  # GET /ingrediente_platillos.json
  def index
    @ingrediente_platillos = IngredientePlatillo.all
  end

  # GET /ingrediente_platillos/1
  # GET /ingrediente_platillos/1.json
  def show
  end

  # GET /ingrediente_platillos/new
  def new
    @ingrediente_platillo = IngredientePlatillo.new
  end

  # GET /ingrediente_platillos/1/edit
  def edit
  end

  def llenar
    @existe = IngredientePlatillo.select("IngredientePlatillos.*").where("platillo_id = ?", params[:ide]).where("ingrediente_id = ?", params[:id])
    @platillo = Platillo.find(params[:ide])
    if @existe.empty?
      @ingrediente_platillo = IngredientePlatillo.new(platillo_id: params[:ide], ingrediente_id: params[:id])
      @ingrediente_platillo.save
    else 
      redirect_to agregar_ingrediente_path(id: @platillo), :flash => { :error => "Ese Ingrediente ya está asociado al Platillo" }
    end
  end

   def vaciar
    IngredientePlatillo.where(:ingrediente_id => params[:id]).delete_all
   end
  # POST /ingrediente_platillos
  # POST /ingrediente_platillos.json
  def create
    @ingrediente_platillo = IngredientePlatillo.new(ingrediente_platillo_params)

    respond_to do |format|
      if @ingrediente_platillo.save
        format.html { redirect_to @ingrediente_platillo}
        format.json { render :show, status: :created, location: @ingrediente_platillo }
      else
        format.html { render :new }
        format.json { render json: @ingrediente_platillo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingrediente_platillos/1
  # PATCH/PUT /ingrediente_platillos/1.json
  def update
    respond_to do |format|
      if @ingrediente_platillo.update(ingrediente_platillo_params)
        format.html { redirect_to @ingrediente_platillo}
        format.json { render :show, status: :ok, location: @ingrediente_platillo }
      else
        format.html { render :edit }
        format.json { render json: @ingrediente_platillo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingrediente_platillos/1
  # DELETE /ingrediente_platillos/1.json
  def destroy
    @ingrediente_platillo.destroy
    respond_to do |format|
      format.html { redirect_to ingrediente_platillos_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingrediente_platillo
      @ingrediente_platillo = IngredientePlatillo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingrediente_platillo_params
      params[:ingrediente_platillo]
    end
end
