class IceCreamController < ApplicationController
    def index
        @ice_cream = IceCream.all
    end
end
