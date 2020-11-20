class Api::V1::DogsController < ApplicationController
    def index
        dogs = Dog.all
        render json: dogs
    end
    
    def show
        dog = Dog.find(params[:id])
        render json: dog, except: [:created_at, :updated_at]
    end

    def create
        # byebug
        # manually find dog, if can't find create / if you can - return dog 
        dog = Dog.find_or_create_by(name: dog_params[:name])
        render json: dog
    end

    def update
        dog = Dog.find(params[:id])
        dog.update(dog_params)
        render json: dog
    end

    private
    def dog_params
        params.require(:dog).permit(:name, :profile_picture, :age, :postcode, :description, :organization, :breed, :color, :coat_length, :size, :gender, :distance, :good_with_cats, :good_with_dogs, :good_with_children, :house_trained, :spayed_neutered, :special_needs)
    end
end



