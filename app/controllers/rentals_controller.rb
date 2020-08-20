class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
  end

  def new
    @tree = Tree.find(params[:tree_id])
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.user = current_user
    @tree = Tree.find(params[:tree_id])
    @rental.total_price = ((@rental.end_on - @rental.start_on) / 86_400) * @tree.price
    @rental.tree = @tree

    if @rental.save
      redirect_to rentals_path
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:start_on, :end_on, :status, :total_price, :tree_id)
  end
end
