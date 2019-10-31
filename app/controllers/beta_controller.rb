class BetaController < ApplicationController
    def create
        @beta = Betum.new(betum_params)
        if @beta.save 
            flash[:notice] = "We would contact you soon."
        else
            flash[:notice] = "Please try again."
        end
        redirect_to root_path
    end
    
    private
    def betum_params
        params.require(:betum).permit(:email)
    end
end
