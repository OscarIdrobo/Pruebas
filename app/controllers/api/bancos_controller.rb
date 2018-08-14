class Api::BancosController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
 
    def index
      @bancos = Banco.all
      render json: @bancos
    end
   
    def show
    end
   
    def create
      @banco = Banco.new(user_params)
   
      if @banco.save
        render json: @banco, status: :created
      else
        render json: @banco.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @banco.update(user_params)
        render json: @banco, status: :ok
      else
        render json: @banco.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @banco.destroy
      head :no_content
    end
   
    private
      def set_user
        @banco = Banco.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :username)
      end


end
