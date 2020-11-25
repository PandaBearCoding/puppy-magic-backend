class Api::V1::MatchesController < ApplicationController
    def index
        matches = Match.all.sort_by {|match| match.dog_id}
        render json: matches, except: [:created_at, :updated_at, :user_id, :dog_id]     
    end

    def show
        match = Match.find(params[:id])
        render json: match
    end

    def update
        match = Match.find(params[:id])
        match.update!(match_params)
        render json: {}
    end 

    def create
        # byebug
        match = Match.create!(match_params)
        render json: match
    end

    def destroy
        match = Match.find(params[:id])
        match.destroy
        render json: {}
    end 

    private    
    def match_params
        params.require(:match).permit(:user_id, :dog_id)
    end
end
