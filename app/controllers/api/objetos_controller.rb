class Api::ObjetosController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
 
    def index
      @objetos = Objeto.all
      render json: @objetos
    end
   
    def show
    end
   
    def create
      @objeto = Objeto.new(user_params)
   
      if @objeto.save
        render json: @objeto, status: :created
      else
        render json: @objeto.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @objeto.update(user_params)
        render json: @objeto, status: :ok
      else
        render json: @objeto.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @objeto.destroy
      head :no_content
    end
   
    private
      def set_user
        @objeto = Objeto.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :username)
      end


end
