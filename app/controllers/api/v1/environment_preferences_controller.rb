# class Api::V1::EnvironmentPreferencesController < ApplicationController
#     def index
#         environment_preferences = EnvironmentPreference.all.sort_by {|ep| ep.environment_id}
#         render json: environment_preferences, except: [:created_at, :updated_at, :user_id, :environment_id]     
#     end

#     def update
#         environment_preference = EnvironmentPreference.find(params[:id])
#         environment_preference.update!(environment_preference_params)
#         render json: {}
#     end 

#     def create
#         environment_preference = EnvironmentPreference.create!(environment_preference_params)
#         render json: environment_preference 
#     end

#     def destroy
#         environment_preference = EnvironmentPreference.find(params[:id])
#         environment_preference.destroy
#         render json: {}
#     end 

#     private    
#     def environment_preference_params
#         params.require(:environment_preference).permit(:user_id, :environment_id)
#     end
# end

