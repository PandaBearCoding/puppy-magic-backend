class Api::V1::DistancePreferencesController < ApplicationController
    def index
        distance_preferences = DistancePreference.all.sort_by {|dp| dp.distance_id}
        render json: distance_preferences, except: [:created_at, :updated_at, :user_id, :distance_id]     
    end

    def show
        distance_preference = DistancePreference.find(params[:id])
        render json: distance_preference
    end

    def update
        distance_preferences = DistancePreference.find(params[:id])
        distance_preferences.update!(distance_preference_params)
        render json: {}
    end 

    def create
        distance_preference = DistancePreference.create!(distance_preference_params)
        render json: distance_preference
    end

    def destroy
        distance_preference = DistancePreference.find(params[:id])
        distance_preference.destroy
        render json: {}
    end 

    private    
    def distance_preference_params
        params.require(:distance_preference).permit(:user_id, :distance_id)
    end
end
