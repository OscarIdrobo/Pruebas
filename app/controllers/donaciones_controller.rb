class DonacionesController < ApplicationController
  before_action :set_donacione, only: [:show, :edit, :update, :destroy]

  # GET /donaciones
  # GET /donaciones.json
  def index
    @donaciones = Donacione.all
  end

  # GET /donaciones/1
  # GET /donaciones/1.json
  def show
  end

  # GET /donaciones/new
  def new
    @donacione = Donacione.new
  end

  # GET /donaciones/1/edit
  def edit
  end

  # POST /donaciones
  # POST /donaciones.json
  def create
    @donacione = Donacione.new(donacione_params)

    respond_to do |format|
      if @donacione.save
        format.html { redirect_to @donacione, notice: 'Donacione was successfully created.' }
        format.json { render :show, status: :created, location: @donacione }
      else
        format.html { render :new }
        format.json { render json: @donacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donaciones/1
  # PATCH/PUT /donaciones/1.json
  def update
    respond_to do |format|
      if @donacione.update(donacione_params)
        format.html { redirect_to @donacione, notice: 'Donacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @donacione }
      else
        format.html { render :edit }
        format.json { render json: @donacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donaciones/1
  # DELETE /donaciones/1.json
  def destroy
    @donacione.destroy
    respond_to do |format|
      format.html { redirect_to donaciones_url, notice: 'Donacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donacione
      @donacione = Donacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donacione_params
      params.require(:donacione).permit(:TipoDonacion_id, :Usuario_id, :Fundacion_id, :Objeto_id, :DireccionReclamarDonacion, :Latituddirreclamardonacion, :LongitudDirReclamarDonacion, :TiempoEsperaDonador, :EstadoDonacion, :MontoDonar, :ImagenConsignacion, :DescripcionObjeto, :TiempoVoluntariado)
    end
end
