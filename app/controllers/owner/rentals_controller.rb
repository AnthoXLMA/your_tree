module Owner
  class RentalsController < ApplicationController
    def index
      @rentals = current_user.rentals
    end
  end
end
