class BookingsController < ApplicationController
    def index
        @bookings = Booking.all.limit(2)
    end
end
