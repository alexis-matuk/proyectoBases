class EstablecimientoInspectorsController < ApplicationController
  before_action :set_establecimiento_inspector, only: [:show, :edit, :update, :destroy]

  # GET /establecimiento_inspectors
  # GET /establecimiento_inspectors.json
  def index
    @establecimiento_inspectors = EstablecimientoInspector.all
  end

  # GET /establecimiento_inspectors/1
  # GET /establecimiento_inspectors/1.json
  def show
  end

  # GET /establecimiento_inspectors/new
  def new
    @establecimiento_inspector = EstablecimientoInspector.new
  end

  # GET /establecimiento_inspectors/1/edit
  def edit
  end

  # POST /establecimiento_inspectors
  # POST /establecimiento_inspectors.json
  def create
    @establecimiento_inspector = EstablecimientoInspector.new(establecimiento_inspector_params)

    respond_to do |format|
      if @establecimiento_inspector.save
        format.html { redirect_to @establecimiento_inspector}
        format.json { render :show, status: :created, location: @establecimiento_inspector }
      else
        format.html { render :new }
        format.json { render json: @establecimiento_inspector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /establecimiento_inspectors/1
  # PATCH/PUT /establecimiento_inspectors/1.json
  def update
    respond_to do |format|
      if @establecimiento_inspector.update(establecimiento_inspector_params)
        format.html { redirect_to @establecimiento_inspector}
        format.json { render :show, status: :ok, location: @establecimiento_inspector }
      else
        format.html { render :edit }
        format.json { render json: @establecimiento_inspector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /establecimiento_inspectors/1
  # DELETE /establecimiento_inspectors/1.json
  def destroy
    @establecimiento_inspector.destroy
    respond_to do |format|
      format.html { redirect_to establecimiento_inspectors_url}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establecimiento_inspector
      @establecimiento_inspector = EstablecimientoInspector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def establecimiento_inspector_params
      params.require(:establecimiento_inspector).permit(:nombre, :fecha)
    end
end
