module Owner
  class RentalsController < ApplicationController
    def index
      @rentals = current_user.rental_requests
    end

    def accept
      @rental = Rental.find(params[:id])
      @rental.status = 'accepted'
      @rental.save
      redirect_to owner_rentals_path
    end

    def refuse
      @rental = Rental.find(params[:id])
      @rental.status = 'refused'
      @rental.save
      redirect_to owner_rentals_path
    end
  end
end
