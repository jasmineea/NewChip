class PagesController < ApplicationController
    def home
    end

    def account
        @posts = Post.all.limit(3)
        @bookings = Booking.all.limit(3)
    end

end
