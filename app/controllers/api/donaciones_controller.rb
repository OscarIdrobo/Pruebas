class Api::DonacionesController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
 
    def index
      @donaciones = Donacione.all
      render json: @donaciones
    end
   
    def show
    end
   
    def create
      @donacione = Donacione.new(user_params)
   
      if @donacione.save
        render json: @donacione, status: :created
      else
        render json: @donacione.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @donacione.update(user_params)
        render json: @donacione, status: :ok
      else
        render json: @donacione.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @donacione.destroy
      head :no_content
    end
   
    private
      def set_user
        @donacione = Donacione.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :username)
      end


end
