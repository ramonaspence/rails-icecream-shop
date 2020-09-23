class IceCreamsController < ApplicationController

    def index
        @ice_cream = IceCream.all 
    end

    def new
        @ice_cream = IceCream.new
    end

end
