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

    def login
        render json: User.first
    end 

    def signup
    end 
    
    private
    def user_params
         params.require(:user).permit(:username, :password, :name, :profile_picture, :postcode, :age, :phone_number, :email, :housing_type, :has_yard, :near_park, :lifestyle, :description, :matches, :breed_preferences, :environment_preferences, :location_preferences)
    end
end