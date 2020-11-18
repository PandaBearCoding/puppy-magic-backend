class Api::V1::DogsController < ApplicationController
    def index
        dogs = Dog.all
        render json: dogs
    end
    
    def show
        dog = Dog.find(params[:id])
        render json: dog, except: [:created_at, :updated_at]
    end
end