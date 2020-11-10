class Api::V1::PlacesController < ApplicationController

    def index
        places = Place.all
        render json: places, status: 200
      end
    
      def create
        place = Place.create(place_params)
        render json: place, status: 201
      end
    
      def update
        @place.update(place_params)
        render json: @place, status: 200
      end
    
      def destroy
        placeId = @place.id
        @place.destroy
        render json: {message:"Zap! place deleted", placeId:placeId}
      end
    
      def show
        render json: @place, status: 200
      end
    
      private
      def place_params
        params.require(:place).permit!
      end

end
