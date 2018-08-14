class FundacionesController < ApplicationController
  before_action :set_fundacione, only: [:show, :edit, :update, :destroy]

  # GET /fundaciones
  # GET /fundaciones.json
  def index
    @fundaciones = Fundacione.all
  end

  # GET /fundaciones/1
  # GET /fundaciones/1.json
  def show
  end

  # GET /fundaciones/new
  def new
    @fundacione = Fundacione.new
  end

  # GET /fundaciones/1/edit
  def edit
  end

  # POST /fundaciones
  # POST /fundaciones.json
  def create
    @fundacione = Fundacione.new(fundacione_params)

    respond_to do |format|
      if @fundacione.save
        format.html { redirect_to @fundacione, notice: 'Fundacione was successfully created.' }
        format.json { render :show, status: :created, location: @fundacione }
      else
        format.html { render :new }
        format.json { render json: @fundacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fundaciones/1
  # PATCH/PUT /fundaciones/1.json
  def update
    respond_to do |format|
      if @fundacione.update(fundacione_params)
        format.html { redirect_to @fundacione, notice: 'Fundacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @fundacione }
      else
        format.html { render :edit }
        format.json { render json: @fundacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fundaciones/1
  # DELETE /fundaciones/1.json
  def destroy
    @fundacione.destroy
    respond_to do |format|
      format.html { redirect_to fundaciones_url, notice: 'Fundacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fundacione
      @fundacione = Fundacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fundacione_params
      params.require(:fundacione).permit(:Banco_id, :Usuario_id, :NombreFundacion, :NitFundacion, :FechaCreacion, :DirFundacion, :LatDirFundacion, :LonDirFundacion, :TelFundacion, :CelFundacion, :CorreoFundacion, :ImagenLogo, :NumeroCuenta, :Descripcion)
    end
end
