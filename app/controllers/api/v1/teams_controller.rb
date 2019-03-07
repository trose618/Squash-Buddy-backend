module Api
    module V1
        class Api::V1::TeamsController < ApplicationController
            before_action :find_team, only: [:update, :show, :destroy]
            def index
                @teams = Team.all
                render json: @teams
            end

            def show
                render json: @team
            end

            def create
                @team = Team.new(team_params)
                if @team.save
                    render json: @team, status: :accepted
                else
                    render json: {error: @team.errors.full_messages }, status: :unprocessible_entity
                end
            end

            def update
                @team.update(team_params)
                if @team.save
                render json: @team, status: :accepted
                else
                render json: { errors: @team.errors.full_messages }, status: :unprocessible_entity
                end
            end

            def destroy
                @team.destroy
            end

            private

            def team_params
                params.permit(:name)
            end

            def find_team
                @team = Team.find(params[:id])
            end
        end
    end
end