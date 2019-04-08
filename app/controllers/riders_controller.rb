class RidersController < ApplicationController
    before_action :set_rider, only: [:show]

    def index
        @riders = Rider.all
        json_response(@riders)
    end

    def show
        json_response(@rider)
    end

    private

    def set_rider
        @rider = Rider.find(params[:id])
    end
end
