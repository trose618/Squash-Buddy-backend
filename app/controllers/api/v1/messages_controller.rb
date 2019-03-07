module Api
    module V1
        class Api::V1::MessagesController < ApplicationController
            before_action :find_message, only: [:update, :show, :destroy]
            def index
                @messages = Message.all
                render json: @messages
            end

            def show
                render json: @message
            end

            def create
                @message = Message.new(message_params)
                if @message.save
                    render json: @message, status: :accepted
                else
                    render json: {error: @message.errors.full_messages }, status: :unprocessible_entity
                end
            end

            def update
                @message.update(message_params)
                if @message.save
                render json: @message, status: :accepted
                else
                render json: { errors: @message.errors.full_messages }, status: :unprocessible_entity
                end
            end

            def destroy
                @message.destroy
            end

            private

            def message_params
                params.permit(:sender_id, :reciever_id, :message_content)
            end

            def find_message
                @message = Message.find(params[:id])
            end
        end
    end
end

