module Owner
  class RentalsController < ApplicationController
    def index
      @rentals = current_user.rental_requests
    end
  end
end
