class Api::V1::TripsController < ApplicationController
    
      def index
        trips = Trip.all
        render json: trips, status: 200
      end
    
      def create
        trip = Trip.create(trip_params)
        # render json: trip, status: 201
        if trip.valid?
            render json: { trip: TripSerializer.new(trip) }, status: :created
        else
            render json: { error: 'Failed to create trip' }, status: :not_acceptable
        end
      end
    
      def update
        @trip.update(trip_params)
        # render json: @trip, status: 200
        if @trip.valid?
          render json: { trip: TripSerializer.new(@trip) }, stats: :accepted
        else
          render json: { error: 'Failed to update trip' }, status: :not_acceptable
        end
      end
    
      def destroy
        tripId = @trip.id
        @trip.destroy
        render json: {message:"Zap! trip deleted", tripId:tripId}
      end
    
      def show
        render json: { trip: TripSerializer.new(@trip) }, status: :accepted
      end
    
      private
      def trip_params
        params.require(:trip).permit(:caption, :cover_photo, :user_id)
      end
    
end
