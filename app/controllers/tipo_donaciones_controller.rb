class TipoDonacionesController < ApplicationController
  before_action :set_tipo_donacione, only: [:show, :edit, :update, :destroy]

  # GET /tipo_donaciones
  # GET /tipo_donaciones.json
  def index
    @tipo_donaciones = TipoDonacione.all
  end

  # GET /tipo_donaciones/1
  # GET /tipo_donaciones/1.json
  def show
  end

  # GET /tipo_donaciones/new
  def new
    @tipo_donacione = TipoDonacione.new
  end

  # GET /tipo_donaciones/1/edit
  def edit
  end

  # POST /tipo_donaciones
  # POST /tipo_donaciones.json
  def create
    @tipo_donacione = TipoDonacione.new(tipo_donacione_params)

    respond_to do |format|
      if @tipo_donacione.save
        format.html { redirect_to @tipo_donacione, notice: 'Tipo donacione was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_donacione }
      else
        format.html { render :new }
        format.json { render json: @tipo_donacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_donaciones/1
  # PATCH/PUT /tipo_donaciones/1.json
  def update
    respond_to do |format|
      if @tipo_donacione.update(tipo_donacione_params)
        format.html { redirect_to @tipo_donacione, notice: 'Tipo donacione was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_donacione }
      else
        format.html { render :edit }
        format.json { render json: @tipo_donacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_donaciones/1
  # DELETE /tipo_donaciones/1.json
  def destroy
    @tipo_donacione.destroy
    respond_to do |format|
      format.html { redirect_to tipo_donaciones_url, notice: 'Tipo donacione was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_donacione
      @tipo_donacione = TipoDonacione.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_donacione_params
      params.require(:tipo_donacione).permit(:Desc_Tipo_Donacion)
    end
end
