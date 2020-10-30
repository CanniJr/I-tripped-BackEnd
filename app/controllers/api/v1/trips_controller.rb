class Api::V1::TripsController < ApplicationController
    
      def index
        trips = Trip.all
        render json: trips, status: 200
      end
    
      def create
        trip = Trip.create(trip_params)
        render json: trip, status: 201
      end
    
      def update
        @trip.update(trip_params)
        render json: @trip, status: 200
      end
    
      def destroy
        tripId = @trip.id
        @trip.destroy
        render json: {message:"Zap! trip deleted", tripId:tripId}
      end
    
      def show
        render json: @trip, status: 200
      end
    
      private
      def trip_params
        params.require(:trip).permit(:caption, :cover_photo, :user_id)
      end
    
end
