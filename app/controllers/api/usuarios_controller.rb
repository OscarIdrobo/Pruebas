class Api::UsuariosController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
 
    def index
      @usuarios = Usuario.all
      render json: @usuarios
    end
   
    def show
    end
   
    def create
      @usuario = Usuario.new(user_params)
   
      if @usuario.save
        render json: @usuario, status: :created
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @usuario.update(user_params)
        render json: @usuario, status: :ok
      else
        render json: @usuario.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @usuario.destroy
      head :no_content
    end
   
    private
      def set_user
        @usuario = Usuario.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :username)
      end
end
