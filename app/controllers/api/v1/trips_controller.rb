class Api::V1::TripsController < ApplicationController
  # skip_before_action :authorized, only: [:destroy]

      def index
        trips = Trip.all
        render json: trips, status: 200
      end
    
      def create
        @trip = Trip.create(trip_params)
        # byebug
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
    
      #Trip.destroy(id)
      def destroy
        Trip.destroy(params[:trip][:id])
        # byebug
          if !@trip.save
            render json: { success: "Deleted trip" , trip: @trip}, status: :accepted
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
