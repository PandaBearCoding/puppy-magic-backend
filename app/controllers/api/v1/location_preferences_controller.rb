class Api::V1::LocationPreferencesController < ApplicationController
    def index
        location_preferences = LocationPreference.all.sort_by {|lp| lp.location_id}
        render json: location_preferences, except: [:created_at, :updated_at, :user_id, :location_id]     
    end

    def update
        location_preference = LocationPreference.find(params[:id])
        location_preference.update!(location_preference_params)
        render json: {}
    end 

    def create
        location_preference = LocationPreference.create!(location_preference_params)
        render json: location_preference
    end

    def destroy
        location_preference = LocationPreference.find(params[:id])
        location_preference.destroy
        render json: {}
    end 

    private    
    def location_preference_params
        params.require(:location_preference).permit(:user_id, :location_id)
    end
end
