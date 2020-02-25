class BookingsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]

    def create
        @creek = Creek.find(params[:creek_id])
        @booking = Booking.new
        @booking.user_id = current_user.id
        @booking.creek_id = @creek.id
        if @booking.save!
          redirect_to creek_bookings_path
        end
    end

    def index
        @bookings = current_user.bookings
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to creek_bookings_path(current_user.id)
    end
end
