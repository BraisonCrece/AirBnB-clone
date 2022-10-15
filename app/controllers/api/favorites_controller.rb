# frozen_string_literal: true

module Api
  class FavoritesController < ApplicationController
    protect_from_forgery with: :null_session

    def create
      favorite = Favorite.create!(favorite_params)

      respond_to do |format|
        format.json do
          render json: favorite.to_json, status: :created
        end
      end
    end

    def destroy
      favorite = Favorite.find_by(favorite_params)
      favorite.destroy!

      respond_to do |format|
        format.json do
          render json: favorite.to_json, status: 204
        end
      end
    end

    private

      def favorite_params
        params.permit(:user_id, :property_id)
      end
  end
end