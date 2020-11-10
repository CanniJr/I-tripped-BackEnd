class Api::V1::TripsController < ApplicationController
  # skip_before_action :authorized, only: [:destroy]

      def index
        trips = Trip.all
        render json: trips, status: 200
      end
    
      def create
        # byebug
        @trip = Trip.create(trip_params)
        # render json: trip, status: 201
        
        if @trip.valid?
            render json: { trip: TripSerializer.new(@trip) }, status: :created
        else
            render json: { error: 'Failed to create trip' }, status: :not_acceptable
        end
      end
    
      def update
        @trip.update(trip_params)
        # render json: @trip, status: 200
        if @trip.valid?
          render json: { trip: TripSerializer.new(@trip) }, status: :accepted
        else
          render json: { error: 'Failed to update trip' }, status: :not_acceptable
        end
      end
    
      def destroy
        # byebug
        userId = current_user
          @trip.destroy
          if !@trip.save
            render json: { success: "Deleted trip" , user_id:userId}, status: :accepted
          else
            render json: {error: 'Failed to delete trip'}, status: :not_acceptable
          end
      end
    
      def show
        render json: { trip: TripSerializer.new(@trip) }, status: :accepted
      end
    
      private
      def trip_params
        params.require(:trip).permit(:user_id, :caption, :cover_photo)
      end
    
end
