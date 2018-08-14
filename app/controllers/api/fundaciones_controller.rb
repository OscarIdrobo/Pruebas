class Api::FundacionesController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
 
    def index
      @fundaciones = Fundacione.all
      render json: @fundaciones
    end
   
    def show
    end
   
    def create
      @fundacione = Fundacione.new(user_params)
   
      if @fundacione.save
        render json: @fundacione, status: :created
      else
        render json: @fundacione.errors, status: :unprocessable_entity
      end
    end
   
    def update
      if @fundacione.update(user_params)
        render json: @fundacione, status: :ok
      else
        render json: @fundacione.errors, status: :unprocessable_entity
      end
    end
   
    def destroy
      @fundacione.destroy
      head :no_content
    end
   
    private
      def set_user
        @fundacione = Fundacione.find(params[:id])
      end
   
      def user_params
        params.require(:user).permit(:email, :password, :username)
      end



end
