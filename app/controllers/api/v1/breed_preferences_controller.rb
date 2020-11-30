# class Api::V1::BreedPreferencesController < ApplicationController
#     def index
#         breed_preferences = BreedPreference.all.sort_by {|bp| bp.breed_id}
#         render json: breed_preferences, except: [:created_at, :updated_at, :user_id, :breed_id]     
#     end

#     def update
#         breed_preference = BreedPreference.find(params[:id])
#         breed_preference.update!(breed_preference_params)
#         render json: {}
#     end 

#     def create
#         breed_preference = BreedPreference.create!(breed_preference_params)
#         render json: breed_preference 
#     end

#     def destroy
#         breed_preference = BreedPreference.find(params[:id])
#         breed_preference.destroy
#         render json: {}
#     end 

#     private    
#     def breed_preference_params
#         params.require(:breed_preference).permit(:user_id, :breed_id)
#     end
# end
