class IceCreamsController < ApplicationController

    def index
        @ice_cream = IceCream.all 
    end

    def new
        @ice_cream = IceCream.new
    end

    def show
        @ice_cream = IceCream.find(params[:id])
    end

    def create
        @ice_cream = IceCream.new(ice_cream_params)
        if @ice_cream.save
            redirect_to @ice_cream
        else
            render 'new'
        end
    end

    def edit
        @ice_cream = IceCream.find(params[:id])
    end

    private
        def ice_cream_params
            params.require(:ice_cream).permit(:name, :description, :available, :featured, :date_made)
        end

end
