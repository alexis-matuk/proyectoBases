class InspectorsController < ApplicationController
  before_action :set_inspector, only: [:show, :edit, :update, :destroy]

  # GET /inspectors
  # GET /inspectors.json
  def index
       if params[:search]
      @inspectors = Inspector.search(params[:search]).order("created_at DESC")
    else
      @inspectors = Inspector.order("created_at DESC")
    end
  end

  # GET /inspectors/1
  # GET /inspectors/1.json
  def show
  end

 def agregar
    @inspectors = Inspector.all
    @establecimiento = Establecimiento.find(params[:id])
  end

  # GET /inspectors/new
  def new
    @inspector = Inspector.new
  end

  # GET /inspectors/1/edit
  def edit
  end

  # POST /inspectors
  # POST /inspectors.json
  def create
    @inspector = Inspector.new(inspector_params)

    respond_to do |format|
      if @inspector.save
        format.html { redirect_to @inspector}
        format.json { render :show, status: :created, location: @inspector }
      else
        format.html { render :new }
        format.json { render json: @inspector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspectors/1
  # PATCH/PUT /inspectors/1.json
  def update
    respond_to do |format|
      if @inspector.update(inspector_params)
        format.html { redirect_to @inspector}
        format.json { render :show, status: :ok, location: @inspector }
      else
        format.html { render :edit }
        format.json { render json: @inspector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspectors/1
  # DELETE /inspectors/1.json
  def destroy
    EstablecimientoInspector.where(:inspector_id => @inspector.id).destroy_all
    @inspector.destroy
    respond_to do |format|
      format.html { redirect_to inspectors_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspector
      @inspector = Inspector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspector_params
      params.require(:inspector).permit(:nombre, :institucion, :departamento, :telefono)
    end
end
