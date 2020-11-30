class Api::V1::DistancesController < ApplicationController
    def index
        distances = Distance.all
        render json: distances
    end
end