class Api::V1::UsersController < ApplicationController      
    def index
        users = User.all
        render json: users
    end
    
    def show
        user = User.find(params[:id])
        render json: user, except: [:created_at, :updated_at]
    end
    
    def create
        user = User.create!(user_params)
        render json: user
    end
    
    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {}
    end
    
    def matches 
        user = User.find(params[:id])
        matches = user.matches
        render json: matches
    end 

    def location_preferences 
        user = User.find(params[:id])
        location_preferences = user.location_preferences
        render json: location_preferences
    end 

    def distance_preferences 
        user = User.find(params[:id])
        distance_preferences = user.distance_preferences
        render json: distance_preferences
    end 

    def login
        render json: User.first
    end 

    def signup
    end 
    
    private
    def user_params
         params.require(:user).permit(:username, :password, :name, :profile_picture, :postcode, :age, :phone_number, :email, :housing_type, :has_yard, :near_park, :description, :matches, :location_preferences, :distance_preferences)
    end
end