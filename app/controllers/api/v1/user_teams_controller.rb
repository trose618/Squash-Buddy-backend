module Api
  module V1
    class Api::V1::UserTeamsController < ApplicationController
      before_action :find_user_team, only: [:update, :show, :destroy]
      def index
        @user_teams = UserTeam.all
        render json: @user_teams
      end

      def show
          render json: @user_team
      end

      def create
          @user_team = UserTeam.new(user_team_params)
          if @user_team.save
              render json: @user_team, status: :accepted
          else
              render json: {error: @user_team.errors.full_messages }, status: :unprocessible_entity
          end
      end

      def update
          @user_team.update(user_team_params)
          if @user_team.save
          render json: @user_team, status: :accepted
          else
          render json: { errors: @user_team.errors.full_messages }, status: :unprocessible_entity
          end
      end

      def destroy
          @user_team.destroy
      end

        private

        def user_team_params
          params.permit(:team_id, :user_id, :created_at)
      end

      def find_user_team
          @user_team = UserTeam.find(params[:id])
      end
    end
  end
end
