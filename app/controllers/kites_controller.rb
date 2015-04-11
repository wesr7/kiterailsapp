class KitesController < ApplicationController

    def index
        @kites = Kite.all
    end

    def show
        @kite = Kite.find(params[:id])
    end

    def new
    end

    def create
        @kite = Kite.new(kite_params)

        @kite.save
        redirect_to @kite
    end

private
    def kite_params
        params.require(:kite).permit(:name, :origin, :color, :style, :quantity, :additional_information)
    end

end
