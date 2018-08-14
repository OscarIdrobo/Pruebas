class Api::TipoDonacionesController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
 
    def index
      @tipo_donaciones = TipoDonacione.all
      render json: @tipo_donaciones
    end
   
    def show
    end
   
    def create
      @tipo_donacione = TipoDonacione.new(user_params)
   
      if @tipo_donacione.save
        render json: @tipo_donacione, status: :created
      else
        render json: @tipo_donacione.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @tipo_donacione.update(user_params)
        render json: @tipo_donacione, status: :ok
      else
        render json: @tipo_donacione.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @tipo_donacione.destroy
      head :no_content
    end
   
    private
      def set_user
        @tipo_donacione = TipoDonacione.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :username)
      end
end
